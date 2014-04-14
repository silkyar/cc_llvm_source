#define DEBUG_TYPE "insert-call-edge-profiling"

#include "llvm/Pass.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/Module.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Transforms/IPO/PassManagerBuilder.h"
#include "llvm/PassManager.h"
#include "llvm/ADT/ilist.h"
#include "llvm/IR/GlobalVariable.h"
#include "llvm/IR/Constants.h"
#include "llvm/IR/Type.h"
#include "llvm/ADT/ArrayRef.h"
#include "llvm/ADT/SmallVector.h"
#include "llvm/ADT/SmallSet.h"
#include "llvm/IR/IntrinsicInst.h"
#include "llvm/IR/IRBuilder.h"
#include "llvm/IR/DerivedTypes.h"
#include "llvm/IR/Instruction.h"
#include "llvm/Analysis/CallGraph.h"
#include "llvm/DebugInfo.h"
#include "llvm/Analysis/ProfileInfoLoader.h"
#include "llvm/Analysis/ProfileInfo.h"
#include "llvm/Support/InstIterator.h"
#include "llvm/Transforms/Utils/BasicBlockUtils.h"
#include "../lib/Transforms/Instrumentation/ProfilingUtils.h"
#include "llvm/IR/TypeBuilder.h"
#include "llvm/Analysis/CallGraphSCCPass.h"

#include <iostream>
#include <vector>
#include <fstream>
#include <sstream>

using namespace llvm;
using namespace std;

namespace {
	struct CallEdgeProfiling : public ModulePass {

		static char ID;
		ofstream funcOrderFile;
		
		CallEdgeProfiling() : ModulePass(ID) {
			funcOrderFile.open("funcOrderFile.txt", ios::out);
		}

		~CallEdgeProfiling() {
			funcOrderFile.close();		
		}

		virtual void getAnalysisUsage(AnalysisUsage &AU) const {
			AU.setPreservesAll();
		}

		virtual bool runOnModule(Module& M) {
			Function *Main = M.getFunction("main");
			if (Main == 0) {
				errs() << "WARNING: Cannot insert edge profiling into a module"
					 << " with no main function!\n";
 				return false; 
  			}

			unsigned numFuncs = 0 , numCalls = 0;

			for (Module::iterator MItr = M.begin(); MItr != M.end(); MItr++) {
				Function *F = &(*MItr);
				// skip functions that are ony declared
				if (!F || F->isDeclaration()) continue; 
				numFuncs++;
			}

			outs() << "Number of functions: " << numFuncs << "\n";
			for (Module::iterator MItr = M.begin(); MItr != M.end(); MItr++) {
				Function *F = &(*MItr);
				for (inst_iterator I = inst_begin(F), E = inst_end(F); I != E; ++I) {
						if (isa<CallInst>(*I))
							numCalls++;
				}
			}
				
			outs() << "Number of calls: " << numCalls << "\n";

			// create 2D array of dimension [numFuncs x numFuncs], to store
			// call edge counts. We don't know which edges will be traversed
			// and so therefore need to create the full NxN array

			// We add 1 to both numCalls and numFuncs to account for the external
			// function that calls main
			Type *ATy = ArrayType::get(Type::getInt32Ty(M.getContext()), 
				(numFuncs+1)*(numCalls+1));

			GlobalVariable *Counters =
				new GlobalVariable(M, ATy, false, GlobalValue::InternalLinkage,
					Constant::getNullValue(ATy), "CallEdgeCounters");
			

			Type* callerVarType = Type::getInt32Ty(M.getContext());
			GlobalVariable* callerVar =
				new GlobalVariable(M, callerVarType, false, GlobalValue::InternalLinkage,
					Constant::getNullValue(callerVarType), "CallerFunc", NULL, 
					GlobalVariable::GeneralDynamicTLSModel);

			unsigned  funcId = 1, callId = 1;	
			for (Module::iterator MItr = M.begin(); MItr != M.end(); MItr++) {
				Function *F = &(*MItr);
				// skip functions that are ony declared
				if (!F || F->isDeclaration()) continue; 

				funcOrderFile << getFName(F) << " " << callId << endl;
			
				Constant* FuncIdVal = ConstantInt::get(callerVarType, funcId);

				// set CallerFunc to id, before each call in F
				// and to 0 after each call
		 		for(Function::iterator FItr = F->begin(); FItr != F->end(); FItr++) {	 
					BasicBlock* BB = &(*FItr);
					for(BasicBlock::iterator BBItr = BB->begin(); BBItr != BB->end(); BBItr++) {
						Instruction* I = &(*BBItr);
						if (isa<CallInst>(I)) {
							Constant* CallIdVal = ConstantInt::get(callerVarType, callId++);
							new StoreInst(CallIdVal, callerVar, I);
							Instruction* resetCallerFunc = 
								new StoreInst(ConstantInt::get(Type::getInt32Ty(M.getContext()), 0),
									 callerVar);
							resetCallerFunc->insertAfter(I);
						}
					}
				}

				// At the function's entry, update caller->callee edge counter
				BasicBlock& BB = F->getEntryBlock();
				BasicBlock::iterator InsertPos = BB.getFirstInsertionPt();
				while (isa<AllocaInst>(InsertPos)) {
					++InsertPos;
				}

				Value *CallerVal = new LoadInst(callerVar, "CallerVal", InsertPos);

				// Insert the increment counter at the beginning
				InsertIncrementCounter(CallerVal, FuncIdVal, numFuncs, InsertPos, M);

				funcId++;
			}

			InsertProfilingInitCall(Main, "dyncg_start_call_edge_profiling", Counters);
			return true;
		}

		string getFName(Function* F) {
			return (F->hasName()) ? F->getName() : "";
		}

		void InsertIncrementCounter(Value* CallerId, Value* FuncId, int numFuncs, 
			BasicBlock::iterator& InsertPos, Module& M) {
			FunctionType* IncFuncType = TypeBuilder<void(
				types::i<32>,types::i<32>,types::i<32>), true>::get(M.getContext());
			Function* IncFunc = cast<Function>(M.getOrInsertFunction(
				"dyncg_increment_call_edge_counter", IncFuncType));
			Value* args[] = { CallerId, FuncId, ConstantInt::get(
				IntegerType::getInt32Ty(M.getContext()), numFuncs) };
			CallInst::Create(IncFunc, args, "", InsertPos);
		}

	};

	char CallEdgeProfiling::ID = 0;
	static RegisterPass<CallEdgeProfiling> X("insert-call-edge-profiling", "Call Edge Profiling Instrumentation Pass", false, false);

	void addPasses(const PassManagerBuilder &Builder, PassManagerBase &PM) {
		PM.add(new CallEdgeProfiling);
	}
	RegisterStandardPasses S(PassManagerBuilder::EP_OptimizerLast, addPasses);
}
