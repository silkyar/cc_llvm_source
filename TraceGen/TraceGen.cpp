#include "llvm/Support/Debug.h"
#include "llvm/Analysis/Passes.h"
#include "llvm/IR/Function.h"
#include "llvm/Pass.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/Constants.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Support/CFG.h"
#include <map>
#include <list>
#include <iostream>
#include <vector>
#include "llvm/Analysis/ProfileInfo.h"
#include "llvm/IR/Instructions.h"
#include "llvm/IR/Module.h"
#include "llvm/IR/BasicBlock.h"
#include "llvm/Analysis/LoopPass.h"
#include "llvm/Analysis/LoopInfo.h"
#include "llvm/Support/CFG.h"
#include "llvm/ADT/SmallVector.h"
#include "LAMP/LAMPLoadProfile.h"
#include "llvm/Transforms/Utils/BasicBlockUtils.h"
#include <fstream>
#include <string.h>
#include <unistd.h>
#include <sstream>

#define CUMULATIVE_PROB 0
#define PROB 0.6

using namespace llvm;
using namespace std;

typedef pair<string, string> BBlk;
typedef pair<int, int> Addr;
typedef map<BBlk, Addr> BBSizeMap;

namespace {
  class TraceGen : public FunctionPass {

	public:
    	static char ID; // Pass identification, replacement for typeid

		ofstream trace_file;
		ifstream bb_file;

		ProfileInfo *PI;
		LoopInfo *LI;

		map<BasicBlock*, list<BasicBlock*> > superBlocks;
    	BBSizeMap bb_offset_size_map;
	
		TraceGen() : FunctionPass(ID) {
			char bb_file_path[1024], bb_file_name[]="/bb_offset_out_x86_32.txt";
			string line, data, func, bb;
			int size, addr, bb_id=0;
			if(getcwd(bb_file_path, sizeof(bb_file_path))!=NULL) {
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
					}
					bb_file.close();
				}
				
				// Open trace file to write superblocks
				trace_file.open("trace_file.txt",ios::out);
			}
		}

		~TraceGen() {
			trace_file.close();
		}

		virtual bool runOnFunction(Function &F) {
			PI = &getAnalysis<ProfileInfo>();
			LI = &getAnalysis<LoopInfo>();

			map<double,list<BasicBlock*> >* execBBs = 
    			new map<double, list<BasicBlock*> >();

 	 		// stores the set of unvisited BBs
  			set<BasicBlock*>* unvisitedBBs =
    			new set<BasicBlock*>();

  			// stores the set of backedges described as (from, to) pair
  			set<pair<const BasicBlock*, const BasicBlock*> >* backEdges =
    			new set<pair<const BasicBlock*, const BasicBlock*> >();

  			// retrieve all backedges contained in this current function
  			SmallVector<pair<const BasicBlock*, const BasicBlock*> , 64> backEdgesVector;
  			FindFunctionBackedges(F, backEdgesVector);

  			// transfer everything from backEdgesVector to backEdges
  			backEdges->insert(backEdgesVector.begin(), backEdgesVector.end());

			
  			// insert all the BBs in this function into set of unvisitedBBs
  			for (Function::iterator funcIter = F.begin(), funcIterEnd = F.end();
       			funcIter != funcIterEnd; ++funcIter) {
    			// gets number of instructions in this BB
				BasicBlock* BB = &(*funcIter);
    			double execCount = PI->getExecutionCount(BB);
    			map<double, list<BasicBlock*> >::iterator it = execBBs->find(execCount);
    			if (it == execBBs->end()) {
    			  list<BasicBlock*> arg(1, funcIter);
    			  execBBs->insert(pair<double, list<BasicBlock*> >(execCount, arg));
    			} else {
    			  it->second.push_back(funcIter);
    			}

    			unvisitedBBs->insert(funcIter);
  			}
			
  			// traverse each BB in descending order of their execution counts
  			for (map<double, list<BasicBlock*> >::reverse_iterator arg_b = execBBs->rbegin(), 
				arg_e = execBBs->rend(); arg_b != arg_e; ++arg_b) {
    			for (list<BasicBlock*>::iterator cur_b = arg_b->second.begin(), 
					cur_e = arg_b->second.end(); cur_b != cur_e; ++cur_b) {
					if (unvisitedBBs->find(*cur_b) == unvisitedBBs->end()) {
    			    	continue;
    			  	}

      				// use this current BB as seed and remove from set
      				unvisitedBBs->erase(*cur_b);
			
      				list<BasicBlock*> trace;
     				list<BasicBlock*>::iterator traceIter;

     			 	trace.push_back(*cur_b);

     			 	// run trace selection algorithm
     			 	BasicBlock* currBB = *cur_b;
     			 	BasicBlock* nextBB;
     			 	double cum_prob = 1;

     			 	// grow trace forward
     			 	while (1) {
						nextBB = bestSuccessor(currBB, cum_prob, unvisitedBBs, backEdges);
						if (nextBB == NULL) {
     			     		break;
						}
						trace.push_back(nextBB);
						unvisitedBBs->erase(nextBB);
						currBB = nextBB;
      				}

					// start creating backwards from current BB again
     			 	currBB = *cur_b;
     			 	// grow trace backwards
     			 	while (1) {
     			   		nextBB = bestPredecessor(currBB, cum_prob, unvisitedBBs, backEdges);
     			   		if (nextBB == NULL) {
							break;
     			  	 	}
						trace.push_front(nextBB);     
						unvisitedBBs->erase(nextBB);
						currBB = nextBB;
					}
				
      				// record our newly found superblock
      				// we don't record superblocks of size 1
      				if (trace.front() != trace.back()) {
        				BasicBlock* head = trace.front();
        				trace.pop_front();
						superBlocks[head] = trace;
					}
				}
			}
			printSuperBlocks(&F);
			delete execBBs;
			delete unvisitedBBs;
			delete backEdges;
			superBlocks.clear();	
			return false;
		}

		
		BasicBlock* bestSuccessor(BasicBlock* currBB,
			double& cum_prob, set<BasicBlock*>* unvisitedBBs,
			set<pair<const BasicBlock*, const BasicBlock*> >* backEdges) {
  				double maxEdgeWeight = 0.0;

  			double totalExFreq = PI->getExecutionCount(currBB);
  			BasicBlock* bestSuccBB = NULL;

  			for (succ_iterator succ_b = succ_begin(currBB), succ_e = succ_end(currBB);
  			     succ_b != succ_e; ++succ_b) {
  			  //iterates through all successorBB of currBB
  			  double curEdgeWeight = PI->getEdgeWeight(PI->getEdge(currBB, *succ_b));
  			  if (curEdgeWeight > maxEdgeWeight) {
  			    maxEdgeWeight = curEdgeWeight;
  			    bestSuccBB = *succ_b;
  			  }
  			}

  			// no best successor is found if edge weight < threshold
  			double cur_prob = maxEdgeWeight/totalExFreq;
  			if (cur_prob < PROB) {
  			  return NULL;
  			}

  			// if this edge is found in backEdge set, then this edge is a backedge
  			pair<const BasicBlock*, const BasicBlock*> tmpBackEdgeCheck(currBB, bestSuccBB);
  			if (backEdges->find(tmpBackEdgeCheck) != backEdges->end()) {
  			  return NULL;
  			}
		
			
  			// check if succBB belongs in same loop, if neither is in loop, 
			// condition will fail so it's ok
  			if (LI->getLoopFor(currBB) != LI->getLoopFor(bestSuccBB)) {
  			  return NULL;
  			}
		
  			// we don't want to return a previously visited node
  			if (unvisitedBBs->find(bestSuccBB) == unvisitedBBs->end()) {
  			  return NULL;
  			}

			/*
  			// cumulative probability check
  			if (CUMULATIVE_PROB && cum_prob*cur_prob < PROB) {
  			  return NULL;
  			}
			*/
  			cum_prob *= cur_prob;
  			return bestSuccBB;
		}

		BasicBlock* bestPredecessor(BasicBlock* currBB,
			double& cum_prob, set<BasicBlock*>* unvisitedBBs,
			set<pair<const BasicBlock*, const BasicBlock*> >* backEdges) {
		  
			double maxEdgeWeight = 0.0;
		  	double totalExFreq = PI->getExecutionCount(currBB);
		  	BasicBlock* bestPredBB = NULL;
		
		  	for (pred_iterator pred_b = pred_begin(currBB), pred_e = pred_end(currBB);
		  	     pred_b != pred_e; ++pred_b) {
		  	  //iterates through all predecessorBB of currBB
		  	  double curEdgeWeight = PI->getEdgeWeight(PI->getEdge(*pred_b, currBB));
		  	  if (curEdgeWeight > maxEdgeWeight) {
		  	    maxEdgeWeight = curEdgeWeight;
		  	    bestPredBB = *pred_b;
		  	  }
		  	}
		
		  	// no best predecessor is found if edge weight < threshold
		  	double cur_prob = maxEdgeWeight/totalExFreq;
		  	if (cur_prob < PROB) {
		  	  return NULL;
		  	}
		
		  	// if this edge is found in backEdge set, then this edge is a backedge
		  	pair<const BasicBlock*, const BasicBlock*> tmpBackEdgeCheck(bestPredBB, currBB);
		  	if (backEdges->find(tmpBackEdgeCheck) != backEdges->end()) {
		  	  return NULL;
		  	}
		
		  	if (LI->getLoopFor(currBB) != LI->getLoopFor(bestPredBB)) {
		  	  return NULL;
		  	}
		
		  	// we don't want to get any previously visited node
		  	if (unvisitedBBs->find(bestPredBB) == unvisitedBBs->end()) {
		  	  return NULL;
		  	}
		
		  	// cumulative probability check
		  	if (CUMULATIVE_PROB && cum_prob*cur_prob < PROB) {
		  	  return NULL;
		  	}
		
		  	cum_prob *= cur_prob;
		  	return bestPredBB;
		}
		 

		void printSuperBlocks(Function *F) {
			unsigned cnt = 0;
			string func_name = F->hasName()?F->getName():"";
			for (map<BasicBlock*, list<BasicBlock*> >::iterator it_b = superBlocks.begin(), it_e = superBlocks.end();
				it_b != it_e; ++it_b) {
				int superblock_size = 0;

				string bb_name = (it_b->first)->hasName()?((it_b->first))->getName():"";
				trace_file << "SuperBlock " << cnt++ << " contains: " << "\n";
				trace_file << func_name << " " << bb_name << "\n";
					
				superblock_size += get_size(func_name, bb_name);
				
				for (list<BasicBlock*>::iterator sp_b = (it_b->second).begin(), sp_e = (it_b->second).end();
 			        	sp_b != sp_e; ++sp_b) {
						string bb_name = (*sp_b)->hasName()?(*sp_b)->getName():"";
						trace_file << func_name << " " <<  bb_name << "\n";
						superblock_size += get_size(func_name, bb_name);
				}
				trace_file << "***" << superblock_size <<"\n";
			}
		}
			
		int get_size(string func_name, string bb_name) {
			BBlk bblk = make_pair(func_name, bb_name);
			errs() << func_name.c_str() << bb_name.c_str() <<"\n";
			if (bb_offset_size_map.find(bblk) != bb_offset_size_map.end()) {
				Addr size_add = bb_offset_size_map[bblk];
				errs() << "Found";	
				return size_add.first;
			}
			return 0;	
		}
	
		virtual void getAnalysisUsage(AnalysisUsage &AU) const {
	    	AU.setPreservesAll();
		 	AU.addRequired<ProfileInfo>();
		 	AU.addRequired<LoopInfo>();
		}
  };
}

char TraceGen::ID = 0;
static RegisterPass<TraceGen> X("tracegen", "Trace Gen Pass");
