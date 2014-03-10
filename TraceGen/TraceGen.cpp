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
#define MIN_TRACE_SIZE 280
using namespace llvm;
using namespace std;

typedef pair<string, string> BBlk;
typedef pair<int, int> Addr;
typedef map<BBlk, Addr> BBSizeMap;

typedef struct {
	list <BasicBlock*> BBLst;
	double tripCount;
	double size;
} Trace;

typedef struct {
	list <BasicBlock*> headTraceLst;
	double size;
} ConTrace;

namespace {
  class TraceGen : public FunctionPass {

	public:
    	static char ID; // Pass identification, replacement for typeid

		ofstream traceFile, logFile, consolTraceFile;
		ifstream bbFile;

		ProfileInfo *PI;
		LoopInfo *LI;

		map<BasicBlock*, list<BasicBlock*> > superBlocks;
		map<BasicBlock*, Trace> traces;
		map<BasicBlock*, ConTrace> conTraces;

    	BBSizeMap bbOffsetSizeMap;
	
		TraceGen() : FunctionPass(ID) {
			char bbFilePath[1024], bbFileName[]="/bb_offset_out_x86_32.txt";
			if(getcwd(bbFilePath, sizeof(bbFilePath))!=NULL) {
				strcat(bbFilePath, bbFileName);
				bbFile.open(bbFilePath, ios::in);
				
				/* 
 				 * Read file and make a map of BasicBlock sizes
				 * of the form {<Function, Basic Block>, <Size, Starting address>}
				 */
				int size, addr;
				string func, bb, line;

				if(bbFile.is_open()) {
					while(getline(bbFile, line)) {
						std::stringstream linestream(line);
						linestream>>func>>bb>>std::hex>>addr>>std::dec>>size;
						
						BBlk bblk = make_pair(func, bb);
						Addr add = make_pair(size, addr);
			
						bbOffsetSizeMap.insert(std::pair<
											std::pair<std::string, std::string>, 
											std::pair<int, int>
											>(bblk, add));
					}
					bbFile.close();
				}
				
				// Open trace file to write superblocks
				traceFile.open("traceFile.txt",ios::out);
			
				// open log file for logs on superblock construction
				logFile.open("logFile.txt", ios::out);
		
				// Open file to write traces
				consolTraceFile.open("consolTraceFile.txt", ios::out);
			}
		}

		~TraceGen() {
			traceFile.close();
			logFile.close();
			consolTraceFile.close();
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
				if (arg_b->first == 0) {
					continue;	
				}
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
						nextBB = bestSuccessor(currBB, cum_prob, unvisitedBBs, backEdges, &F);
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
     			   		nextBB = bestPredecessor(currBB, cum_prob, unvisitedBBs, backEdges, &F);
     			   		if (nextBB == NULL) {
							break;
     			  	 	}
						trace.push_front(nextBB);     
						unvisitedBBs->erase(nextBB);
						currBB = nextBB;
					}
				
      				// record our newly found superblock
      				// we don't record superblocks of size 1
      				//if (trace.front() != trace.back()) {
        			BasicBlock* head = trace.front();
        			trace.pop_front();
					superBlocks[head] = trace;
					/*} else {
						BasicBlock* singleBB = trace.front();
						if (singleBB->hasName() && F.hasName()) {
							errs() << F.getName() << " " << singleBB->getName() << "\n";
						}
					}*/
				}
			}

			// merge superblocks to make traces of reasonable size
			// mergeSuperBlocks(&F, backEdges);
	
			// print superblocks and clear for 
			// next function
			string funcName = (F.hasName()) ? F.getName() : "";
			createTraces(&F, backEdges);
			printTraces(funcName);
			consolTraces(funcName);
			printSuperBlocks(&F, backEdges);
			superBlocks.clear();	
			traces.clear();
			conTraces.clear();
			// delete for next function
			delete execBBs;
			delete unvisitedBBs;
			delete backEdges;

			return false;
		}

			
		BasicBlock* bestSuccessor(BasicBlock* currBB,
			double& cum_prob, set<BasicBlock*>* unvisitedBBs,
			set<pair<const BasicBlock*, const BasicBlock*> >* backEdges,
			Function *F) {
  			double maxEdgeWeight = 0.0;

  			double totalExFreq = PI->getExecutionCount(currBB);
  	
			// Logging
			string funcName = F->hasName() ? F->getName() : "" ;
			string bbName = currBB->hasName() ? currBB->getName() : "";
			logFile << "Expanding: " << funcName << " " << bbName << "\n";
			logFile << "Execution frequency " << totalExFreq << "\n";		
			
			if (totalExFreq == 0) 
				return NULL;

			BasicBlock* bestSuccBB = NULL;

			for (succ_iterator succ_b = succ_begin(currBB), succ_e = succ_end(currBB);
  			     succ_b != succ_e; ++succ_b) {
				//iterates through all successorBB of currBB
  				double curEdgeWeight = PI->getEdgeWeight(PI->getEdge(currBB, *succ_b));
				
				// Logging
				string bbName = succ_b->hasName() ? succ_b->getName() : "";
				logFile <<funcName << " " << bbName << " " << curEdgeWeight << "\n";

  				if (curEdgeWeight > maxEdgeWeight) {
  			    	maxEdgeWeight = curEdgeWeight;
  			    	bestSuccBB = *succ_b;
  			  	}
  			}

  			// no best successor is found if edge weight < threshold
  			double cur_prob = maxEdgeWeight/totalExFreq;
			
			// logging
			logFile << cur_prob << "\n";

  			if (cur_prob < PROB) {
			  log_reason( funcName, bbName, 1);
  			  return NULL;
  			}

  			// if this edge is found in backEdge set, then this edge is a backedge
  			pair<const BasicBlock*, const BasicBlock*> tmpBackEdgeCheck(currBB, bestSuccBB);
  			if (backEdges->find(tmpBackEdgeCheck) != backEdges->end()) {
			  log_reason( funcName, bbName, 2);
  			  return NULL;
  			}
		
  			// check if succBB belongs in same loop, if neither is in loop, 
			// condition will fail so it's ok
  			if (LI->getLoopFor(currBB) != LI->getLoopFor(bestSuccBB)) {
			  log_reason( funcName, bbName, 3);
  			  return NULL;
  			}
		
  			// we don't want to return a previously visited node
  			if (unvisitedBBs->find(bestSuccBB) == unvisitedBBs->end()) {
			  log_reason( funcName, bbName, 4);
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
			set<pair<const BasicBlock*, const BasicBlock*> >* backEdges,
			Function* F) {
		  
			double maxEdgeWeight = 0.0;
		  	double totalExFreq = PI->getExecutionCount(currBB);
		  	if(totalExFreq == 0) {
				return NULL; 
			}

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
		
			// logging
			string funcName = F->hasName() ? F->getName() : "" ;
			string bbName = currBB->hasName() ? currBB->getName() : "";
			logFile << "Expanding: " << funcName << " " << bbName << "\n";
			logFile << "Execution frequency " << totalExFreq << "\n";		

		  	// no best predecessor is found if edge weight < threshold
		  	double cur_prob = maxEdgeWeight/totalExFreq;
		  	if (cur_prob < PROB) {
			  log_reason( funcName, bbName, 1);
		  	  return NULL;
		  	}
		
		  	// if this edge is found in backEdge set, then this edge is a backedge
		  	pair<const BasicBlock*, const BasicBlock*> tmpBackEdgeCheck(bestPredBB, currBB);
		  	if (backEdges->find(tmpBackEdgeCheck) != backEdges->end()) {
			  log_reason( funcName, bbName, 2);
		  	  return NULL;
		  	}
	
				
		  	if (LI->getLoopFor(currBB) != LI->getLoopFor(bestPredBB)) {
			  log_reason( funcName, bbName, 3);
		  	  return NULL;
		  	} 
		
		  	// we don't want to get any previously visited node
		  	if (unvisitedBBs->find(bestPredBB) == unvisitedBBs->end()) {
			  log_reason( funcName, bbName, 4);
		  	  return NULL;
		  	}
	
			/*	
		  	// cumulative probability check
		  	if (CUMULATIVE_PROB && cum_prob*cur_prob < PROB) {
		  	  return NULL;
		  	}*/
		
		  	cum_prob *= cur_prob;
		  	return bestPredBB;
		}

		void createTraces (Function *F, set<pair<const BasicBlock*, const BasicBlock*> >* backEdges) {
			string funcName = F->hasName()?F->getName():"";
			for (map<BasicBlock*, list<BasicBlock*> >::iterator it_b = superBlocks.begin();
				it_b != superBlocks.end(); it_b++) {
		
				// get head of the superblock to check for loops	
				BasicBlock* head = it_b->first;
				string bbName = head->hasName() ? head->getName() : "";
				
				// add to the size of the superblock
				double superBlockSize = 0;
				superBlockSize += (double) getSize(funcName, bbName);
				
				BasicBlock* tail;	
				for (list<BasicBlock*>::iterator sp_b = (it_b->second).begin(), sp_e = (it_b->second).end();
 			        	sp_b != sp_e; ++sp_b) {
						
						// this basic block might have a backedge to the header
						tail = *sp_b;
						
						string bbName = (*sp_b)->hasName() ? (*sp_b)->getName() : "";
						
						// add to the size of the superblock
						superBlockSize += (double) getSize(funcName, bbName);
				}

				// Check for loop
				bool isLoop = false;
				double loopDynSize = 0, tripCount = 0;
				pair<const BasicBlock*, const BasicBlock*> tmpBackEdgeCheck(tail, head);
				if (backEdges->find(tmpBackEdgeCheck) != backEdges->end()) {	
					isLoop = true;
					
					double weightHeader = (double)PI->getExecutionCount(head);
				
					// subtract the weight of the backedge from the preheader	
					double weightPreheader = weightHeader - (double)PI->getEdgeWeight(PI->getEdge(tail, head));
					tripCount = weightHeader/weightPreheader;
					
					// For cases when the BB is not found in the dump and we do not have an
					// estimate for the size
					if (superBlockSize == 0 ) {
						superBlockSize = 3;
					}
					loopDynSize = tripCount * superBlockSize;
				}
		
				// make a copy of the superblock	
				list<BasicBlock*> BBLst(it_b->second);
				Trace newTR;
				newTR.BBLst = BBLst;
				newTR.tripCount = tripCount;
			
				if (isLoop) {
					newTR.size = loopDynSize;
				} else {
					newTR.size = superBlockSize;
				}	
				traces[head] = newTR; 
			}	
		}

		void printTraces(string funcName) {
			for(map<BasicBlock*, Trace>::iterator traceItr = traces.begin(); 
				traceItr != traces.end(); traceItr++) {
				Trace t = traceItr->second;
				//consolTraceFile << t.tripCount << " " << t.size << " ";

				string bbName = (traceItr->first)->hasName() ? 
					(traceItr->first)->getName() : "";
				
				//consolTraceFile << bbName.c_str() << " ";
				
				for(list<BasicBlock*>::iterator BBItr = (t.BBLst).begin(); 
					BBItr != (t.BBLst).end(); BBItr++) {
					//consolTraceFile << (*BBItr) << " ";
				}
				//consolTraceFile << endl << endl;
			}
		}

		void consolTraces(string funcName) {

			consolTraceFile << funcName << "\n";
			// Intialize the merge traces data structure
			// Every consolidated trace contains a list of head BBs (key) of every
			// trace present in it.
			for(map<BasicBlock*, Trace>::iterator traceItr = traces.begin(); 
				traceItr != traces.end(); traceItr++) {
				consolTraceFile << " Here \n";				
				list<BasicBlock*> traceLst(1,traceItr->first);
				ConTrace newCT = {traceLst, (traceItr->second).size};
				
				conTraces.insert(make_pair(traceItr->first, newCT));
			}

			// Start the consolidation logic
			for(map<BasicBlock*, ConTrace >::iterator conItr = conTraces.begin();
					conItr != conTraces.end(); conItr++) {

				consolTraceFile << conTraces.size() << "\n";	
				ConTrace CT = conItr->second;
				bool canGrow = true;
	
				string bbname = conItr->first->getName();
				consolTraceFile << "Going to expand " << conItr->first << " " << bbname << "  " <<conItr->second.size << "\n";
				while ((conItr->second.size < MIN_TRACE_SIZE) && (canGrow)) {
					consolTraceFile << "Will start now\n";
					// Get the last BB from the last trace present in ConTrace
					BasicBlock* lstHeadBB = (CT.headTraceLst).back();
					if (traces.find(lstHeadBB) == traces.end()) {
						errs() << " There is no trace starting with this BB \n";
						exit(1);
					}
					
					BasicBlock* lstBB = (traces[lstHeadBB].BBLst.size() != 0) ?
										traces[lstHeadBB].BBLst.back() : lstHeadBB;
					
					// Get the best successor trace for patching				
					double maxSuccSBWeight = 0;
					BasicBlock* patchBB = NULL;
						
					for (succ_iterator succIter = succ_begin(lstBB); succIter != succ_end(lstBB);	
							succIter++) {
						
						consolTraceFile << (*succIter)->getName().str() << "\n";
						if ((*succIter != conItr->first) && (conTraces.find(*succIter) !=  conTraces.end())) {
							// There is a trace starting with the successor block							
							consolTraceFile << "Pass\n";	
							double succSBWeight = (double)PI->getEdgeWeight(PI->getEdge(lstBB, *succIter));
							if (conTraces[*succIter].size < MIN_TRACE_SIZE && (maxSuccSBWeight < succSBWeight)) {
								maxSuccSBWeight = succSBWeight;
								patchBB = *succIter;
								consolTraceFile << "Succ " << patchBB << "\n";
							}
						} 
					}
					
					// patch the new trace
					if (patchBB != NULL) {
						
						ConTrace pCT = conTraces[patchBB]; 
						CT.headTraceLst.insert(CT.headTraceLst.end(), pCT.headTraceLst.begin(), pCT.headTraceLst.end());
						CT.size += pCT.size;
						conItr->second = CT;
						string bbN = patchBB->getName();	
						consolTraceFile << " Patching " << patchBB << " " << patchBB->getName().str() <<"\n" ;						
						// remove the conTrace we just patched to make it no longer eligible 
						// for anymore patching	
						conTraces.erase(patchBB);
					} else {
						consolTraceFile << "Stopping \n";
						canGrow = false;
					}	
				}
			}
		}

		void log_reason(string f, string bb, int reason) {
			logFile <<"Failure to expand: " <<  f << " " << bb << " " << reason << "\n";
			return;
		} 

		void printSuperBlocks(Function *F, set<pair<const BasicBlock*, const BasicBlock*> >* backEdges) {
			unsigned cnt = 0;
			string funcName = F->hasName()?F->getName():"";
			for (map<BasicBlock*, list<BasicBlock*> >::iterator it_b = superBlocks.begin(), it_e = superBlocks.end();
				it_b != it_e; ++it_b) {
			
				// get head of the superblock to check for loops	
				BasicBlock* head = it_b->first;
				
				string bbName = (it_b->first)->hasName() ? ((it_b->first))->getName() : "";
				traceFile << "SuperBlock " << cnt++ << " contains: " << "\n";
				traceFile << funcName << " " << bbName << "\n";
				
				// add to the size of the superblock
				int superBlockSize = 0;
				superBlockSize += getSize(funcName, bbName);
				
				BasicBlock* tail;	
				
				for (list<BasicBlock*>::iterator sp_b = (it_b->second).begin(), sp_e = (it_b->second).end();
 			        	sp_b != sp_e; ++sp_b) {
						// this basic block might have a backedge to the header
						tail = *sp_b;
						
						string bbName = (*sp_b)->hasName() ? (*sp_b)->getName() : "";
						traceFile << funcName << " " <<  bbName << "\n";
					
						// add to the size of the superblock
						superBlockSize += getSize(funcName, bbName);
						traceFile <<  " adding" << superBlockSize;
				}

				bool isLoop = false;
				pair<const BasicBlock*, const BasicBlock*> tmpBackEdgeCheck(tail, head);
				if (backEdges->find(tmpBackEdgeCheck) != backEdges->end()) {	
					isLoop = true;
					
					double weightHeader = (double)PI->getExecutionCount(head);
					double weightPreheader = 0.0;
					for (pred_iterator pi = pred_begin(head); pi != pred_end(head); ++pi) {
						double edgeWeight = PI->getEdgeWeight(PI->getEdge(*pi, head));
						traceFile << edgeWeight << " ";
						weightPreheader += PI->getEdgeWeight(PI->getEdge(*pi, head));
						traceFile << weightPreheader << " ";
					}	
				
					// subtract the weight of the backedge from the preheader	
					weightPreheader = weightHeader -(double)PI->getEdgeWeight(PI->getEdge(tail, head));
					traceFile << "HELLO " << weightPreheader << " " << weightHeader << " ";
					double tripCount = weightHeader/weightPreheader;
					double loopDynSize = tripCount * superBlockSize;
					traceFile << tripCount << " " << superBlockSize << " ";
					traceFile << "Loop encountered " << loopDynSize;
				}
				if (!isLoop) {
					traceFile << superBlockSize;
				}
				traceFile << endl << endl;
			}
		}
			
		int getSize(string funcName, string bbName) {
			BBlk bblk = make_pair(funcName, bbName);
			if (bbOffsetSizeMap.find(bblk) != bbOffsetSizeMap.end()) {
				Addr sizeAdd = bbOffsetSizeMap[bblk];
				return sizeAdd.first;
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
