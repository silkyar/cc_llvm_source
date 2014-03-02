
#include "llvm/ADT/Statistic.h"
#include "llvm/IR/Function.h"
#include "llvm/Pass.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/IR/Module.h"
#include "llvm/Analysis/Passes.h"
#include "llvm/Analysis/LoopPass.h"
#include "llvm/Analysis/LoopInfo.h"
#include "llvm/IR/Constants.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/BasicBlock.h"
#include "llvm/Support/Debug.h"
#include "llvm/ADT/Statistic.h"
#include "llvm/Support/raw_ostream.h"
#include "fstream"
#include "llvm/Transforms/Utils/UnifyFunctionExitNodes.h"
#include "llvm/Support/CFG.h"
#include "llvm/IR/DerivedTypes.h"
#include "llvm/IR/IntrinsicInst.h"
#include "llvm/IR/Instruction.h"
#include "llvm/IR/LLVMContext.h"
#include "llvm/Support/raw_ostream.h"
#include <fstream>
#include <iostream>
#include <fstream>
#include "llvm/Pass.h"
#include "llvm/Support/DataTypes.h"
#include <sys/types.h>
#include <unistd.h>
#include <string.h>
#include <stdlib.h>
#include <sstream>
#include <string>

using namespace llvm;
using namespace std;

typedef std::pair<std::string, std::string> BBlk;
typedef std::pair<int, int>Addr;
typedef map<BBlk, Addr> BBSizeMap;

namespace {
struct CCProf : public ModulePass {
		
		static char ID;	
		UnifyFunctionExitNodes *UEN;
		
		private:
		// static unsigned int mem_instruction_id;
		static unsigned int br_instruction_id;
		static unsigned int bb_id;
		static unsigned int num_func;
	  
		std::map<std::pair<string, string>, int > bb_id_map; 
		BBSizeMap bb_offset_size_map;

		// Methods for static profiling
		Function *dcacheCounter, *branchCounter, *MLPCounter, *icacheCounter;
		Function *exitPrinter;
 
		public: 
		CCProf() : ModulePass(ID) {
			/*
 			 * Read the file with BB size information for Icache profiling
			 */
			char bb_file_path[1024], bb_file_name[]="/bb_offset_out_x86_32.txt";
			ifstream bb_file;
			ofstream bb_id_out;
			string line, data, func, bb;
			int size, addr;
			// Get working directory
			if (getcwd(bb_file_path, sizeof(bb_file_path)) != NULL) {
           		strcat(bb_file_path, bb_file_name);
				bb_file.open(bb_file_path, ios::in);

				/* 
 				 * Read file and make a map of BasicBlock sizes
				 * of the form {<Function, Basic Block>, <Size, Starting address>}
				 */
				if(bb_file.is_open()) {
					while(getline(bb_file, line)) {
						bb_id++;
						std::stringstream linestream(line);
						linestream>>func>>bb>>std::hex>>addr>>std::dec>>size;
						BBlk bblk = make_pair(func, bb);
						Addr add = make_pair(size, addr);
						bb_offset_size_map.insert(std::pair<
											std::pair<std::string, std::string>, 
											std::pair<int, int>
											>(bblk, add));
						bb_id_map.insert(std::pair<std::pair<string, string>, int >(
							bblk, bb_id));
					}
					bb_file.close();
					
					std::map<std::pair<string, string>, int >::iterator it; 
					it = bb_id_map.begin();
					bb_id_out.open("bb_id_out.txt", ios::out);
					while(it != bb_id_map.end()) {
						BBlk bblk = it->first;
						int id = it->second;
						std::pair<int, int> size_addr = bb_offset_size_map[bblk];
						bb_id_out 	<< std::dec << id << std::hex << " " << size_addr.second \
									<< std::dec << " " << (it->first).first << " " \
									<< (it->first).second << "\n";
						it++;
					}
					bb_id_out.close();
				}
				else {
					errs()<<"Cannot open file to read BB sizes"<<bb_file_path<<"\n";
				}
			} else {
				errs()<<"Working directory not found\n";
			}		
		}
		
		virtual void getAnalysisUsage(AnalysisUsage &A) const {
			A.addPreserved<UnifyFunctionExitNodes>();
			A.addRequired<UnifyFunctionExitNodes>();
		}
		
		public:
		virtual bool runOnModule(Module &M){

			LLVMContext& context = M.getContext();
			Constant *branchHookFunc, *dcacheHookFunc, *MLPHookFunc, *icacheHookFunc;
			Constant *exitPrintHookFunc;
			/*
			 * External function for branch profiling
			 * Arguments - Instruction ID, Taken branch target ID
			 * Return type - Void
			 */
			
			branchHookFunc = M.getOrInsertFunction("branchCounter",
													Type::getVoidTy(context),
													llvm::Type::getInt32Ty(context),
													llvm::Type::getInt32Ty(context),
													llvm::Type::getInt32Ty(context),
													(Type*)0);
     		branchCounter= cast<Function>(branchHookFunc);
				
			exitPrintHookFunc = M.getOrInsertFunction("exitPrinter",
														Type::getVoidTy(context),
														(Type*)0);
     		exitPrinter = cast<Function>(exitPrintHookFunc);
				
			/* 
 			 * External function for instruction cache profiling
			 * Arguments - Instruction ID, Memory address
			 * Return type - Void
			 */
			icacheHookFunc = M.getOrInsertFunction("iCacheCounter",
													Type::getVoidTy(context),
                                              		llvm::Type::getInt32Ty(context),
                                              		llvm::Type::getInt32Ty(context),
													llvm::Type::getInt32Ty(context),
													(Type*)0);
      		icacheCounter= cast<Function>(icacheHookFunc);
			
			/* 
 			 * External function for data cache profiling
			 * Arguments - Instruction ID, Memory address
			 * Return type - Void
			 */
			
			dcacheHookFunc = M.getOrInsertFunction("dCacheCounter",
													Type::getVoidTy(context),
                                               		llvm::Type::getInt32Ty(context),
                                               		llvm::Type::getInt32Ty(context),
													(Type*)0);
       		dcacheCounter= cast<Function>(dcacheHookFunc);
				
			   	
			
			/*
 			 * External function for MLP
 			 * Arguments - BB_ID, Number of Instructions in the BB (from bb_offset map) 
 			 * Return type - Void
 			 */
			 
			MLPHookFunc = M.getOrInsertFunction("MLPCounter", 
												Type::getVoidTy(context),
												llvm::Type::getInt32Ty(context),
												(Type*)0);
			MLPCounter = cast<Function>(MLPHookFunc);
			
			ofstream myfile;
			myfile.open ("cerr_out", ios::out);
			
      		// Iterating through all BB and profiling them
     		for(Module::iterator F = M.begin(), E = M.end(); F!= E; ++F) {
				string func_name = (F->hasName())? (F->getName()).str(): "";
				string ret_bb_name;
				Function *func = &*F;
				TerminatorInst *termI = NULL;
				
				// Get the return block for this function
				if(!func->isDeclaration() && func_name.compare ("main") == 0) {
					UEN= &getAnalysis<UnifyFunctionExitNodes>(*func);
					if (UEN != NULL && UEN->getReturnBlock() != NULL) {
						ret_bb_name = UEN->getReturnBlock()->hasName() ? 
										UEN->getReturnBlock()->getName().str() : "";
						termI = UEN->getReturnBlock()->getTerminator();
					}
					BasicBlock *BB =  LLVMGetFirstBasicBlock(func);
					errs() << BB->getName();
				}
				
 				// Iterate through all the basic blocks and profile them
				for(Function::iterator BB = F->begin(), E = F->end(); BB != E; 
					++BB) {
				
					string bb_name = (BB->hasName()) ? (BB->getName()).str(): "";
					myfile << func_name << " " << bb_name << "\n";	
					// Search for this basic block in the dump (bb_id_map)
					// and instrument if found
					std::pair<string, string> bblk = make_pair(func_name, bb_name);
					if(bb_id_map.find(bblk) != bb_id_map.end()) {
						int id = bb_id_map[bblk];
						
						std::pair<int, int> bb_off_add = bb_offset_size_map[bblk];	
						
						// Branch profiling
						CCProf::branch_profiling(id, BB, branchHookFunc, context);
					
						// Instruction cache profiling
						CCProf::inst_addr_profiling(id, bb_off_add, BB, icacheHookFunc, context);
						
						// Data cache profiling
						CCProf::data_cache_profiling(id, BB, dcacheHookFunc, context);
						
						// MLP Profiling
						CCProf::mlp_profiling(id, bb_off_add, BB, context);
						 
						// NOTE: This should always be done in the end because it clears the maps
						if (bb_name.compare(ret_bb_name)== 0) {
							std::vector<Value*> Args(0);
							errs () << " Will print the leftover counters in all the maps when " \
									<< "'main' function exits \n";
							if (termI != NULL) {
								CallInst::Create(exitPrinter, Args, "", termI);
							}
						}
					}
					else {
						myfile << func_name<<"  "<<bb_name<<" not found in map \n";
					}
				}
     		}
        return false;
		}

		
		// Branch profiler	
		virtual bool branch_profiling(int bb_id, 
										Function::iterator &BB, 
										Constant* branchHookFunc,  
										LLVMContext& context){
			
			TerminatorInst *termI = BB->getTerminator();	
			if(isa<BranchInst>(termI)) {
  				int num_succ = 0;
				// errs()<<"Branch Instruction "<<*BI<<"\n";
				num_succ = termI->getNumSuccessors();							
				if(num_succ > 1){				
					for(int i=0; i<num_succ; i++){
						std::vector<Value*> Args(3);
								
						BasicBlock* sucBB = termI->getSuccessor(i);
						Instruction* sucInst = sucBB->getFirstNonPHI();
						// Basic Block ID		
						Args[0] =  ConstantInt::get(llvm::Type::getInt32Ty(context), 
													bb_id);
						// Branch instruction ID
						Args[1] =  ConstantInt::get(llvm::Type::getInt32Ty(context), 
													br_instruction_id);
						// Target branch instruction ID
						Args[2] =  ConstantInt::get(llvm::Type::getInt32Ty(context),
													i);
						// Instrument the branch target instructions
						if(branchCounter!=NULL && !Args.empty()){
							CallInst::Create(branchCounter, Args, "",sucInst);
   	              		}	
					}
					//Increment the branch instruction ID for next time
					++br_instruction_id;
				}
   	    	}
   	    return false;
		}

		/*
 		 * Instruction cache profiling
 		 */
		virtual bool inst_addr_profiling(int bb_id,
										 std::pair<int, int> bb_off_add,
										 Function::iterator &BB, 
										 Constant* icacheHookFunc, 
										 LLVMContext& context
										 ) {
			
			std::vector<Value*> Args(3);
			/* 
			 * The arguments are bb_id, size and the starting address of the basic block 
			 */
			Args[0] = ConstantInt::get(llvm::Type::getInt32Ty(
				BB->getContext()), bb_id);
			Args[1] = ConstantInt::get(llvm::Type::getInt32Ty(
				BB->getContext()), bb_off_add.first);
			Args[2] = ConstantInt::get(llvm::Type::getInt32Ty(
				BB->getContext()), bb_off_add.second);

			if(icacheCounter != NULL && !Args.empty()) {
				Instruction* first_inst = BB->getFirstNonPHI();
				CallInst::Create(icacheCounter, Args, "", first_inst);
			}
			return false;
		}
		
		// D-cache profiler	
		virtual bool data_cache_profiling(int bb_id,
										Function::iterator &BB,  
										Constant* cacheHookFunc,  
										LLVMContext& context) {

	
			for(BasicBlock::iterator BI = BB->begin(), 
				BE = BB->end(); BI != BE; ++BI) {
				
				if(isa<LoadInst>(BI)) {
					std::vector<Value*> Args(2);
					LoadInst *LI = dyn_cast<LoadInst>(BI);
					Value* ptrOp =  LI->getPointerOperand();
		
					// Basic block ID	
					Args[0] = ConstantInt::get(llvm::Type::getInt32Ty(
												BB->getContext()), bb_id);
						
					// Instruction ID
					/*Args[1] =  ConstantInt::get(llvm::Type::getInt32Ty(context), 
												++mem_instruction_id);
					*/// Load Address
					Args[1] = new PtrToIntInst(ptrOp, 
												llvm::Type::getInt32Ty(context), 
												"addr_var", 
												LI);
					/*
					 * Load instruction indicator
					 * Might come in handy later for dirty blocks
					 */
					// Args[2] = ConstantInt::get(llvm::Type::getInt32Ty(context), 0);

					if(dcacheCounter!=NULL && !Args.empty()) {
						CallInst::Create(dcacheCounter, Args, "",BI);
        			}	
				}
		
				else if(isa<StoreInst>(BI)) {
					std::vector<Value*> Args(2);
  					StoreInst *SI = dyn_cast<StoreInst>(BI);
					Value* ptrOp =  SI->getPointerOperand();
	
					// Basic block ID	
					Args[0] = ConstantInt::get(llvm::Type::getInt32Ty(
												BB->getContext()), bb_id);

					// Instruction ID
					/*Args[1] =  ConstantInt::get(llvm::Type::getInt32Ty(context), 
														 ++mem_instruction_id);
					*/// Store Address
					Args[1] = new PtrToIntInst(ptrOp, 
												llvm::Type::getInt32Ty(context), 
												"addr_var", 
												SI);
				  	/*
					 * Store Instruction indicator
					 * Might come in handy later for dirty blocks
					 */
					// Args[2] = ConstantInt::get(llvm::Type::getInt32Ty(context),1);	
						
					if(dcacheCounter!=NULL && !Args.empty()){
						CallInst::Create(dcacheCounter, Args, "",BI);
        			}
				}
			}
			return false;
		}
	
		virtual bool mlp_profiling(int bb_id,
									std::pair<int, int> bb_off_add,
									Function::iterator &BB,
									LLVMContext& context) {
			std::vector<Value*> Args(1);
			TerminatorInst *termI = (*BB).getTerminator();	
			// The arguments should be BB_ID, number of instructions in this BB
			/*Args[0] = ConstantInt::get(llvm::Type::getInt32Ty(
				BB->getContext()), bb_id);*/
			Args[0] = ConstantInt::get(llvm::Type::getInt32Ty(
				BB->getContext()), bb_off_add.first);
			
			if(MLPCounter!=NULL && !Args.empty()) {
				CallInst::Create(MLPCounter, Args, "",termI);
			}
			return true;
		}
	};
}       
char CCProf::ID=0;
unsigned int CCProf::br_instruction_id=0;
unsigned int CCProf::bb_id=0;

//Register our pass
static RegisterPass<CCProf>Y("CCProf", "Profile dynamic operations");
