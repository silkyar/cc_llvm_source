//===- Hello.cpp - Example code from "Writing an LLVM Pass" ---------------===//
//
//                     The LLVM Compiler Infrastructure
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.TXT for details.
//
//===----------------------------------------------------------------------===//
//
// This file implements two versions of the LLVM "Hello World" pass described
// in docs/WritingAnLLVMPass.html
//
//===----------------------------------------------------------------------===//

#include "llvm/Support/Debug.h"
#include "llvm/Analysis/Passes.h"
#include "llvm/IR/Function.h"
#include "llvm/Pass.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/Constants.h"
#include "llvm/Support/raw_ostream.h"
#include <map>
#include <iostream>
#include "llvm/Analysis/ProfileInfo.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/BasicBlock.h"
#include "llvm/Analysis/LoopPass.h"
#include "llvm/Analysis/LoopInfo.h"
#include "llvm/Support/CFG.h"
#include "LAMP/LAMPLoadProfile.h"
#include <fstream>
#include <string.h>

using namespace llvm;
using namespace std;

map<Instruction*, Instruction* > alias_map;

namespace {
  class ILPCalc : public FunctionPass {

	public:
    	static char ID; // Pass identification, replacement for typeid
		ofstream ilp_file;

    	ILPCalc() : FunctionPass(ID) {
			ilp_file.open("ilp.txt",ios::out);
		}

		~ILPCalc() {
			ilp_file.close();
		}
	
		LAMPLoadProfile *LP;
		ProfileInfo *PI;

	    virtual bool runOnFunction(Function &F) {
  
			LP = &getAnalysis<LAMPLoadProfile>();
			PI = &getAnalysis<ProfileInfo>();
	
			std::map<std::pair<Instruction*, Instruction*>*, unsigned int> DepToTimesMap;        
			std::map<std::pair<Instruction*, Instruction*>*, unsigned int>::iterator DepToTimesMapI;        
			map<Instruction*, int>dpcy_graph;
			
			string func_name = "";
	   		if(F.hasName()) {
				func_name = F.getName();
			}
 
			// Store the aliasing instruction pairs from LAMP
			DepToTimesMap = LP->DepToTimesMap;
			for (DepToTimesMapI = DepToTimesMap.begin();  DepToTimesMapI != DepToTimesMap.end(); DepToTimesMapI++) {
				std::pair<Instruction*, Instruction* > *instpair = DepToTimesMapI->first;
				alias_map[instpair->first] = instpair->second;	
			}
		 
			// Iterate through all the BBs and find the maximum dependence depth
			for(Function::iterator BB = F.begin(); BB != F.end(); BB++) {
				int max_depth_node = 1, num_ops = 0;
				string bb_name = "" ;
				
				if (BB->hasName()) {
					bb_name = BB->getName();
					//errs() << bb_name <<  " " << func_name << "\n";
					for (BasicBlock::iterator I = BB->begin(); I != BB->end(); I++) {
						int def_depth = 1 , depth_child_inst = 1;
						Instruction &mI = *I;
						num_ops++;
						//errs() << *I << " " << num_ops << "\n";
						// Memory aliasing 
						if(isa<LoadInst>(mI) || isa<StoreInst>(mI)) {	
							if(alias_map.find(I) != alias_map.end()) {
								Instruction* parent_inst = alias_map[I];
								BasicBlock *parent_BB = parent_inst->getParent();
			
								// We only care about this BB	
								if(parent_BB == BB) {
									if (dpcy_graph.find(parent_inst) != dpcy_graph.end()) {
										depth_child_inst = dpcy_graph[parent_inst] + 1;
									}
								}
							}  
						}
						
						if(dpcy_graph.find(I) != dpcy_graph.end()) {
							def_depth = dpcy_graph[I];	
							if (def_depth <= depth_child_inst) {
								def_depth = depth_child_inst;
							} 
						}	

						dpcy_graph[I] = def_depth;
						//errs() << *I <<  " " << def_depth << "\n";
						if(def_depth > max_depth_node) {
							max_depth_node = def_depth;
							//errs() << "Max depth " << max_depth_node << "\n";
						}

						// Traverse the use-def chain to find dependencies	
						for(Value::use_iterator UI = mI.use_begin(); 
							UI != mI.use_end(); UI ++) {
							Instruction *use_inst = cast<Instruction>(*UI);
							//errs() << "Use " << *use_inst << "\n";
							if(use_inst->getParent()  == BB) {	
								int use_depth = def_depth + 1;
								if (dpcy_graph.find(use_inst) != dpcy_graph.end()) {

									int last_depth = dpcy_graph[use_inst];
									if (last_depth > use_depth) {
										use_depth = last_depth;
									}
								}
								dpcy_graph[use_inst] = use_depth;
								//errs() << "Use depth " << use_depth << "\n";
								if( use_depth > max_depth_node) {
									max_depth_node = use_depth;
									//errs() << "Max depth " << max_depth_node << "\n";
								}
							}
						}
					}
				}
				if ((bb_name != "" ) && (func_name != "")) {
					ilp_file << func_name << " " << bb_name << " " << 
						float(num_ops)/float(max_depth_node) << "\n";
				}
			}
			
			return false;
		}
		 
		virtual void getAnalysisUsage(AnalysisUsage &AU) const {
	    	AU.setPreservesAll();
		 	AU.addRequired<ProfileInfo>();
			AU.addRequired<LAMPLoadProfile>();
		}
  };
}

char ILPCalc::ID = 0;
static RegisterPass<ILPCalc> X("ilpcalc", "ILP calc pass");
