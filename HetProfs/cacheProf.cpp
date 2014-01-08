
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
struct cacheProf : public ModulePass {
		
		static char ID;	
		UnifyFunctionExitNodes *UEN;
		
		private:
		static unsigned int mem_instruction_id;
		static unsigned int br_instruction_id;
		static unsigned int bb_id;
		static unsigned int num_func;
	  
		std::map<std::pair<string, string>, int > bb_id_map; 
		BBSizeMap bb_offset_size_map;

		// Methods for static profiling
		Function *dcacheCounter, *branchCounter, *MLPCounter, *icacheCounter;
		Function *branchPrinter;
 
		public: 
		cacheProf() : ModulePass(ID) {
			/*
 			 * Read the file with BB size information for Icache profiling
			 */
			char bb_file_path[1024], bb_file_name[]="/bb_offset_out.txt";
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
						linestream>>func>>bb>>std::hex>>addr>>std::hex>>size;
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
						bb_id_out << std::dec << id << std::hex << " " << size_addr.second <<  " " << (it->first).first << " " << (it->first).second << "\n";
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
			Constant *branchPrintHookFunc;
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
	
			branchPrintHookFunc = M.getOrInsertFunction("branchPrinter",
														Type::getVoidTy(context),
														(Type*)0);
     		branchPrinter = cast<Function>(branchPrintHookFunc);
			
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
                                               		llvm::Type::getInt64Ty(context),
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
				if(!func->isDeclaration()) {
					UEN= &getAnalysis<UnifyFunctionExitNodes>(*func);
					if (UEN != NULL && UEN->getReturnBlock() != NULL) {
						ret_bb_name = UEN->getReturnBlock()->hasName() ? 
										UEN->getReturnBlock()->getName().str() : "";
						termI = UEN->getReturnBlock()->getTerminator();
					}
				}
				
 				// Iterate through all the basic blocks and profile them
				for(Function::iterator BB = F->begin(), E = F->end(); BB != E; 
					++BB) {
				
					string bb_name = (BB->hasName()) ? (BB->getName()).str(): "";
					
					// Search for this basic block in the dump (bb_id_map)
					// and instrument if found
					std::pair<string, string> bblk = make_pair(func_name, bb_name);
					if(bb_id_map.find(bblk) != bb_id_map.end()) {
						myfile << "$$$$$$$\n";
						int id = bb_id_map[bblk];
						
						std::pair<int, int> bb_off_add = bb_offset_size_map[bblk];	
						// Branch profiling
						cacheProf::branch_profiling(id, BB, branchHookFunc, context);
					
						// Instruction cache profiling
						cacheProf::inst_addr_profiling(id, bb_off_add, BB, icacheHookFunc, context);

						// Data cache profiling
						cacheProf::data_cache_profiling(id, BB, dcacheHookFunc, context);
						
						// MLP Profiling
						cacheProf::mlp_profiling(id, bb_off_add, BB, context);
 
						// Branch profile printing
						// NOTE: This should always be done in the end because it clears the maps
						if (bb_name.compare(ret_bb_name)== 0) {
							std::vector<Value*> Args(0);
							if (termI != NULL) {
								CallInst::Create(branchPrinter, Args, "", termI);
								//CallInst::Create(missMapPrinter, Args, "", termI);
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
			
			// TODO: Check the last instruction of every BB (except for the last
			// BB) for branch instruction
			for(BasicBlock::iterator BI = BB->begin(), BE = BB->end(); 
				BI != BE; ++BI){
				if(isa<BranchInst>(BI)){
  					int num_succ = 0;


					// errs()<<"Branch Instruction "<<*BI<<"\n";
					BasicBlock *thisBB = BI->getParent();
					TerminatorInst *termI = thisBB->getTerminator();	
					num_succ = termI->getNumSuccessors();							
					if(num_succ > 1){				
						for(int i=0; i<num_succ; i++){
							std::vector<Value*> Args(3);
								
							BasicBlock* sucBB = termI->getSuccessor(i);
							Instruction* sucInst = sucBB->getFirstNonPHI();
							// errs()<<"Successor Instruction "<<*sucInst<<"\n";
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
					std::vector<Value*> Args(3);
					LoadInst *LI = dyn_cast<LoadInst>(BI);
					Value* ptrOp =  LI->getPointerOperand();
		
					// Basic block ID	
					Args[0] = ConstantInt::get(llvm::Type::getInt32Ty(
												BB->getContext()), bb_id);
						
					// Instruction ID
					Args[1] =  ConstantInt::get(llvm::Type::getInt32Ty(context), 
												++mem_instruction_id);
					// Load Address
					Args[2] = new PtrToIntInst(ptrOp, 
												llvm::Type::getInt64Ty(context), 
												"addr_var", 
												LI);
					/*
					 * Load instruction indicator
					 * Might come in handy later for dirty blocks
				`	 */
					// Args[2] = ConstantInt::get(llvm::Type::getInt32Ty(context), 0);

					if(dcacheCounter!=NULL && !Args.empty()) {
						CallInst::Create(dcacheCounter, Args, "",BI);
        			}	
				}

				else if(isa<StoreInst>(BI)) {
					std::vector<Value*> Args(3);
  					StoreInst *SI = dyn_cast<StoreInst>(BI);
					Value* ptrOp =  SI->getPointerOperand();
	
					// Basic block ID	
					Args[0] = ConstantInt::get(llvm::Type::getInt32Ty(
												BB->getContext()), bb_id);

					// Instruction ID
					Args[1] =  ConstantInt::get(llvm::Type::getInt32Ty(context), 
														 ++mem_instruction_id);
					// Store Address
					Args[2] = new PtrToIntInst(ptrOp, 
												llvm::Type::getInt64Ty(context), 
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
			std::vector<Value*> Args(2);
			/*int num_mem = 0;

			for(BasicBlock::iterator BI = BB->begin(), 
				BE = BB->end(); BI != BE; ++BI) {

				if(isa<LoadInst>(BI) || isa<StoreInst>(BI)) {
					num_mem++;
				}
			}*/
			//if (num_mem > 0) {
				TerminatorInst *termI = (*BB).getTerminator();	
				// The arguments should be BB_ID, number of instructions in this BB
				Args[0] = ConstantInt::get(llvm::Type::getInt32Ty(
					BB->getContext()), bb_id);
				Args[1] = ConstantInt::get(llvm::Type::getInt32Ty(
					BB->getContext()), bb_off_add.first);
			
				if(MLPCounter!=NULL && !Args.empty()) {
					CallInst::Create(MLPCounter, Args, "",termI);
				}
			//}
			return true;
		}

		/* 
 		 * Get the total number of instructions in a basic block
 		 */
		int get_basic_block_inst_count(Function::iterator &BB) {
			int inst_count  = 0;
			for(BasicBlock::iterator BI = BB->begin(), 
				BE = BB->end(); BI != BE; ++BI) {
				inst_count++;
			}
			return inst_count;
		}	

			
	};
}       
char cacheProf::ID=0;
unsigned int cacheProf::mem_instruction_id=0;
unsigned int cacheProf::br_instruction_id=0;
unsigned int cacheProf::bb_id=0;
//unsigned int cacheProf::num_func=0;

//Register our pass
static RegisterPass<cacheProf>Y("cacheProf", "Profile dynamic operations");


		/* 
 		 * MLP profiling
 		 *//*
		virtual bool mlp_profiling(int bb_id,
											Function::iterator &BB,
											Constant* mlpHookFunc,
											LLVMContext& context) {
			
			int seq_num = 0;
			int total_inst_count = get_basic_block_inst_count(BB);
			std::vector<Value*>dc_args(4);
			std::vector<Value*>mlp_args(2);
	
			dc_args[0] = ConstantInt::get(llvm::Type::getInt32Ty(context), 
													 bb_id);
*/
			/* 
 			 * For every load/store instruction, call external function for MLP	
 			 * The arguments passed are - 
 			 * Basic block id, memory instruction id, sequence number of the
 			 * instruction in the basic block and the operand address of the 
 			 * instruction
 			 *//*
			for(BasicBlock::iterator BI = BB->begin(), 
				BE = BB->end(); BI != BE; ++BI) {
				seq_num++;
				if(isa<LoadInst>(BI)) {

					LoadInst *LI = dyn_cast<LoadInst>(BI);
					Value* ptrOp =  LI->getPointerOperand();
		
					dc_args[1] = ConstantInt::get(llvm::Type::getInt32Ty(context), 
														 	 ++mem_instruction_id);

					// Number of instructions in the BB after this instruction
					dc_args[2] =  ConstantInt::get(llvm::Type::getInt32Ty(context), 
														 	  seq_num);
					// Load Address
					dc_args[3] = new PtrToIntInst(ptrOp, 
															 llvm::Type::getInt64Ty(context), 
															 "addr_var", 
														 	 LI);	


					if(dcacheCounter!=NULL && !mlp_args.empty()) {
						CallInst::Create(dcacheCounter, dc_args, "", BI);
        			}	
				}
				else if(isa<StoreInst>(BI)) {

					StoreInst *SI = dyn_cast<StoreInst>(BI);
					Value* ptrOp =  SI->getPointerOperand();
		
					dc_args[1] = ConstantInt::get(llvm::Type::getInt32Ty(context), 
														 	 ++mem_instruction_id);

					// Number of instructions in the BB after this instruction
					dc_args[2] =  ConstantInt::get(llvm::Type::getInt32Ty(context), 
														 	  seq_num);
					// Load Address
					dc_args[3] = new PtrToIntInst(ptrOp, 
															 llvm::Type::getInt64Ty(context), 
															 "addr_var", 
														 	 SI);
					if(dcacheCounter!=NULL && !mlp_args.empty()) {
						CallInst::Create(dcacheCounter, dc_args, "", BI);
        			}	
		 		}
			}
			*/
			/*
 			 * Just before the BB  ends, call an external function
 			 * with the number of instructions that were after the last memory
 			 * instruction. The external method will use the number for the LDs
 			 * waiting in the MLP counter
 			 *//*
			mlp_args[0] = ConstantInt::get(llvm::Type::getInt32Ty(context),
													bb_id);
			mlp_args[1] = ConstantInt::get(llvm::Type::getInt32Ty(context),
													 total_inst_count - seq_num);
			TerminatorInst *termI = BB->getTerminator();	
			//CallInst::Create(MLPCounter, sig_args, "", termI);
			return false;
		}		
		 *//*
		*/



	//if ((func_name.compare("main") == 0) && (bb_name.compare(ret_bb_name)== 0)) {
						// Data cache profiling
						// cacheProf::cache_profiling(id, BB, cacheHookFunc, context);
						// Insert this basic block in the BB-ID map
						// cacheProf::mlp_profiling(id, BB, dcacheHookFunc, context);
						
						// Get the size of the basic block and starting address
						/*BBlk bb_list_key = make_pair(func_name, 
								 				 bb_name);
						std::map<std::pair<std::string, std::string>, 
							std::pair<int,int> >::iterator map_it;
						map_it = bb_size_map.find(bb_list_key);
		
						if(map_it != bb_size_map.end()){
							std::pair<int, int>bb_add = map_it->second;
						}*/

//if((func_name.compare("main")  == 0) && !func->isDeclaration()) {


// std::pair<string, string> bblk = bb_id_map[bb_id];
			//std::pair<int, int> bb_off_add = bb_offset_size_map[bblk];

			/* BBlk bb_list_key = make_pair(func_name, 
							 				bb_name);
			std::map<std::pair<std::string, std::string>, 
						std::pair<int,int> >::iterator map_it;
			map_it = bb_size_map.find(bb_list_key);
		
			if(map_it != bb_size_map.end()){
				std::pair<int, int>bb_add = map_it->second;
 				
*/
