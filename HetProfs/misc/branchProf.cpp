#define DEBUG_TYPE "IProfiler"
#include "llvm/Module.h"
#include "llvm/Analysis/Passes.h"
#include "llvm/Analysis/LoopPass.h"
#include "llvm/Analysis/LoopInfo.h"
#include "llvm/Constants.h"
#include "llvm/Instructions.h"
#include "llvm/Function.h"
#include "llvm/BasicBlock.h"
#include "llvm/Support/Debug.h"
#include "llvm/ADT/IndexedMap.h"
#include "llvm/Module.h"
#include "llvm/Function.h"
#include "llvm/ADT/Statistic.h"
#include "llvm/Instruction.h"
#include "llvm/Support/raw_ostream.h"
#include "fstream"
#include "llvm/Analysis/ProfileInfo.h"
#include "llvm/Support/CFG.h"
#include "llvm/Analysis/Dominators.h"
#include "llvm/Constants.h"
#include "llvm/DerivedTypes.h"
#include "llvm/IntrinsicInst.h"
#include "llvm/Instruction.h"
#include "llvm/LLVMContext.h"
#include "llvm/IRBuilder.h"
#include "llvm/Support/raw_ostream.h"
#include <sstream>
#include <fstream>
#include <iostream>
#include "llvm/Pass.h"
#include "llvm/Analysis/Passes.h"
#include "llvm/Analysis/ProfileInfoTypes.h"
#include "llvm/Support/DataTypes.h"
#include <sys/types.h>
#include <unistd.h>
#include <string.h>
#include <stdlib.h>
#include <stdio.h>


using namespace llvm;
using namespace std;


namespace {
	struct branchProf : public ModulePass {
		static char ID;	
		Function *branchCounter;
        branchProf() : ModulePass(ID) {}

        virtual bool runOnModule(Module &M)
        {
			Constant *hookFunc;
			LLVMContext& context = M.getContext();
            hookFunc = M.getOrInsertFunction("branchCounter",Type::getVoidTy(M.getContext()),
                                               				llvm::Type::getInt32Ty(M.getContext()),
															llvm::Type::getInt32PtrTy(M.getContext()),
                                               				(Type*)0);
            branchCounter= cast<Function>(hookFunc);

            for(Module::iterator F = M.begin(), E = M.end(); F!= E; ++F)
            {
                for(Function::iterator BB = F->begin(), E = F->end(); BB != E; ++BB)
                {
                    branchProf::runOnBasicBlock(BB, hookFunc, context);
                }
            }

            return false;
        }
        virtual bool runOnBasicBlock(Function::iterator &BB, Constant* hookFunc, LLVMContext& context)
        {

            for(BasicBlock::iterator BI = BB->begin(), BE = BB->end(); BI != BE; ++BI)           
            {
				std::vector<Value*> Args(2);
  			
				if(isa<BranchInst>(BI)) 
                    {
						BranchInst *LI = dyn_cast<BranchInst>(BI);
						Args[0] =  ConstantInt::get(llvm::Type::getInt32Ty(BI->getContext()), 10);
						
						if(!(Args[1]->getType() == Type::getInt32PtrTy(BI->getContext())))
							Args[1] = BitCastInst::CreatePointerCast(Args[1], Type::getInt32PtrTy(BI->getContext()), "", BI);
						
						//errs()<<LI->getOperand(0)<<" "<<LI->getPointerOperand()<<"  "<<Args[1]<<"\n";
						if(branchCounter!=NULL && !Args.empty()){
							CallInst *newInst = CallInst::Create(branchCounter, Args, "",BI);
                    	}
					}
            }
            return false;
        }
	};
}       
 //Register our pass
char branchProf::ID=0;
static RegisterPass<branchProf>Y("branchProf", "Profile dynamic operations");
