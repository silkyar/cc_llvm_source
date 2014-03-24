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
#include "llvm/ADT/PostOrderIterator.h"
#include "LAMP/LAMPLoadProfile.h"
#include "llvm/Transforms/Utils/BasicBlockUtils.h"
#include <fstream>
#include <string.h>
#include <unistd.h>
#include <sstream>

#define CUMULATIVE_PROB 0
#define PROB 0.51
#define MIN_TRACE_SIZE 280
#define AVG_BB_SIZE 3
#define INFREQUENT_EDGE 1
#define BACK_EDGE 2
#define DIFF_LOOP 3
#define VISITED 4

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

string getBBName(BasicBlock* BB) {
			string bbName = "";
			if(BB->hasName()) {
				bbName = BB->getName();
			}
			return bbName;
		}
map <BasicBlock*, int> BBOrderedMap;

struct cmpBBByPostOrder {
	bool operator() (BasicBlock* const a, BasicBlock* const b) const {
		ofstream cmpfile;
		if ((BBOrderedMap.find(a) == BBOrderedMap.end())) {
			errs() << "BB not in postorder map for comparison\n";
			return 0;
		} 
		else if((BBOrderedMap.find(b) == BBOrderedMap.end()) ) {
			errs() << "BB not in postorder map for comparison\n";
			return 0;
		}
		return BBOrderedMap[a] < BBOrderedMap[b]; 
	}
};
map<BasicBlock*, Trace> allTraces;
map<Function*, map<BasicBlock*, ConTrace, cmpBBByPostOrder> > funcConTraceMap;

namespace {
  class TraceGen : public ModulePass {

	public:
    	static char ID; // Pass identification, replacement for typeid

		ofstream traceFile, logFile, consolTraceFile, interFuncLogFile;
		ifstream bbFile;

		ProfileInfo *PI;
		LoopInfo *LI;

		map<BasicBlock*, list<BasicBlock*> > superBlocks;
		map<BasicBlock*, Trace, cmpBBByPostOrder> traces;
		map<BasicBlock*, ConTrace, cmpBBByPostOrder> conTraces;
    	BBSizeMap bbOffsetSizeMap;
	
		TraceGen() : ModulePass(ID) {
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

				// opem tje inter func log file
				interFuncLogFile.open("interFuncLogFile.txt", ios::out);
			}
		}

		~TraceGen() {
			traceFile.close();
			logFile.close();
			consolTraceFile.close();
		}


		virtual void getAnalysisUsage(AnalysisUsage &AU) const {
	    	AU.setPreservesAll();
		 	AU.addRequired<ProfileInfo>();
		 	AU.addRequired<LoopInfo>();
		}

		virtual bool runOnModule(Module &M) {
			PI = &getAnalysis<ProfileInfo>();

			for(Module::iterator mI = M.begin(); mI != M.end(); mI++) {
				Function *F = &(*mI);
				if(F->isDeclaration()) {
					continue;
				}
				getBasicBlocksInOrder(F);
				LI = &getAnalysis<LoopInfo>(*F);

				map<double,list<BasicBlock*> >* execBBs = 
	    			new map<double, list<BasicBlock*> >();
	
				// get function name
				string funcName = (F->hasName()) ? F->getName() : "";
	 	 		
				// stores the set of unvisited BBs
	  			set<BasicBlock*>* unvisitedBBs =
	    			new set<BasicBlock*>();
	
	  			// stores the set of backedges described as (from, to) pair
	  			set<pair<const BasicBlock*, const BasicBlock*> >* backEdges =
	    			new set<pair<const BasicBlock*, const BasicBlock*> >();
	
	  			// retrieve all backedges contained in this current function
	  			SmallVector<pair<const BasicBlock*, const BasicBlock*> , 64> backEdgesVector;
	  			FindFunctionBackedges(*F, backEdgesVector);
	
	  			// transfer everything from backEdgesVector to backEdges
	  			backEdges->insert(backEdgesVector.begin(), backEdgesVector.end());
				
	  			// insert all the BBs in this function into set of unvisitedBBs
	  			for (Function::iterator funcIter = F->begin(), funcIterEnd = F->end();
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
							logFile << "Front ";
							nextBB = bestSuccessor(currBB, cum_prob, unvisitedBBs, backEdges, funcName);
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
							logFile << "Back ";
	     			   		nextBB = bestPredecessor(currBB, cum_prob, unvisitedBBs, backEdges, funcName);
	     			   		if (nextBB == NULL) {
								break;
	     			  	 	}
							trace.push_front(nextBB);     
							unvisitedBBs->erase(nextBB);
							currBB = nextBB;
						}
					
	      				// record our newly found superblock
	      				// we don't record superblocks of size 1
	        			BasicBlock* head = trace.front();
	        			trace.pop_front();
						superBlocks[head] = trace;
					}
				}
	
	
				// Create traces and consolidate small traces	
				createTraces(funcName, backEdges);
				consolTraces(funcName, backEdges);
				printConsolTraces(funcName);
	
				// logging
				allTraces.insert(traces.begin(), traces.end());
				funcConTraceMap.insert(make_pair(F, conTraces));

				// copy the traces to allTraces before clearing
				// copyTracesForInterFuncTracing(&F);
	
				// clear this function's maps
				superBlocks.clear();	
				traces.clear();
				conTraces.clear();
	
				// delete for next function
				delete execBBs;
				delete unvisitedBBs;
				delete backEdges;
			}

			for(Module::iterator mI = M.begin(); mI != M.end(); mI++) {
				createOrderedTraces(&(*mI));
			}
			
			return false;
		}
		
	
		BasicBlock* bestSuccessor(BasicBlock* currBB,
			double& cum_prob, set<BasicBlock*>* unvisitedBBs,
			set<pair<const BasicBlock*, const BasicBlock*> >* backEdges,
			string funcName) {
  			double maxEdgeWeight = 0.0;

  			double totalExFreq = PI->getExecutionCount(currBB);
  	
			// Logging
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
			  log_reason( funcName, bbName, INFREQUENT_EDGE);
  			  return NULL;
  			}

  			// if this edge is found in backEdge set, then this edge is a backedge
  			pair<const BasicBlock*, const BasicBlock*> tmpBackEdgeCheck(currBB, bestSuccBB);
  			if (backEdges->find(tmpBackEdgeCheck) != backEdges->end()) {
			  log_reason( funcName, bbName, BACK_EDGE);
  			  return NULL;
  			}
		
  			// check if succBB belongs in same loop, if neither is in loop, 
			// condition will fail so it's ok
  			if (LI->getLoopFor(currBB) != LI->getLoopFor(bestSuccBB)) {
			  log_reason( funcName, bbName, DIFF_LOOP);
  			  return NULL;
  			}
		
  			// we don't want to return a previously visited node
  			if (unvisitedBBs->find(bestSuccBB) == unvisitedBBs->end()) {
			  log_reason( funcName, bbName, VISITED);
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
			string funcName) {
		  
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
			string bbName = currBB->hasName() ? currBB->getName() : "";
			logFile << "Expanding: " << funcName << " " << bbName << "\n";
			logFile << "Execution frequency " << totalExFreq << "\n";		

		  	// no best predecessor is found if edge weight < threshold
		  	double cur_prob = maxEdgeWeight/totalExFreq;
		  	if (cur_prob < PROB) {
			  log_reason( funcName, bbName, INFREQUENT_EDGE);
		  	  return NULL;
		  	}
		
		  	// if this edge is found in backEdge set, then this edge is a backedge
		  	pair<const BasicBlock*, const BasicBlock*> tmpBackEdgeCheck(bestPredBB, currBB);
		  	if (backEdges->find(tmpBackEdgeCheck) != backEdges->end()) {
			  log_reason( funcName, bbName, BACK_EDGE);
		  	  return NULL;
		  	}
	
				
		  	if (LI->getLoopFor(currBB) != LI->getLoopFor(bestPredBB)) {
			  log_reason( funcName, bbName, DIFF_LOOP);
		  	  return NULL;
		  	} 
		
		  	// we don't want to get any previously visited node
		  	if (unvisitedBBs->find(bestPredBB) == unvisitedBBs->end()) {
			  log_reason( funcName, bbName, VISITED);
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

		void createTraces (string funcName, set<pair<const BasicBlock*, const BasicBlock*> >* backEdges) {
			for (map<BasicBlock*, list<BasicBlock*> >::iterator it_b = superBlocks.begin();
				it_b != superBlocks.end(); it_b++) {
		
				// get head of the superblock to check for loops	
				BasicBlock* head = it_b->first;
				string bbName = head->hasName() ? head->getName() : "";
				
				// add to the size of the superblock
				double superBlockSize = 0;
				superBlockSize += (double) getSize(funcName, bbName);
				
				BasicBlock* tail = head;	
				for (list<BasicBlock*>::iterator sp_b = (it_b->second).begin(), sp_e = (it_b->second).end();
 			        	sp_b != sp_e; ++sp_b) {
						
						// this basic block might have a backedge to the header
						tail = *sp_b;
						
						string bbName = (*sp_b)->hasName() ? (*sp_b)->getName() : "";
						
						// add to the size of the superblock
						superBlockSize += (double) getSize(funcName, bbName);
				}

				// Check for loop
				double tripCount = 1;
				pair<const BasicBlock*, const BasicBlock*> tmpBackEdgeCheck(tail, head);
				if (backEdges->find(tmpBackEdgeCheck) != backEdges->end()) {	
					
					double weightHeader = (double)PI->getExecutionCount(head);
				
					// subtract the weight of the backedge from the preheader	
					double weightPreheader = weightHeader - (double)PI->getEdgeWeight(PI->getEdge(tail, head));
					tripCount = weightHeader/weightPreheader;
					
					// For cases when the BB is not found in the dump and we do not have an
					// estimate for the size					
				}

				if (superBlockSize == 0 ) {
						superBlockSize = AVG_BB_SIZE;
				}

				// make a copy of the superblock	
				list<BasicBlock*> BBLst(it_b->second);
				Trace newTR;
				newTR.BBLst = BBLst;
				newTR.tripCount = tripCount;
				newTR.size = superBlockSize;
				
				traces[head] = newTR; 
			}	
		}

		void printTraces(string funcName) {
			for(map<BasicBlock*, Trace>::iterator traceItr = traces.begin(); 
				traceItr != traces.end(); traceItr++) {
				Trace t = traceItr->second;
				consolTraceFile << t.tripCount << " " << t.size << " ";

				string bbName = (traceItr->first)->hasName() ? 
					(traceItr->first)->getName() : "";
				
				consolTraceFile << bbName.c_str() << " ";
				
				for(list<BasicBlock*>::iterator BBItr = (t.BBLst).begin(); 
					BBItr != (t.BBLst).end(); BBItr++) {
					consolTraceFile << (*BBItr) << " ";
				}
				consolTraceFile << endl << endl;
			}
		}

		
		
		string getFName(Function* F) {
			string FName = "";
			if(F->hasName()) {
				FName = F->getName();
			}
			return FName;
		}
		
		void getBasicBlocksInOrder(Function* F) {
			static int id = 0;
			ReversePostOrderTraversal<Function*> RPOT(F);
			for(ReversePostOrderTraversal<Function*>::rpo_iterator RI = RPOT.begin();
				RI != RPOT.end(); RI++) {
				BasicBlock* BB = *RI;
				BBOrderedMap.insert(make_pair(BB, id++));
			}
		}
		
		void consolTraces(string funcName, set<pair<const BasicBlock*, const BasicBlock*> >* backEdges) {

			consolTraceFile << funcName << "\n";
			// Intialize the merge traces data structure
			// Every consolidated trace contains a list of head BBs (key) of every
			// trace present in it.
			for(map<BasicBlock*, Trace>::iterator traceItr = traces.begin(); 
				traceItr != traces.end(); traceItr++) {
				list<BasicBlock*> traceLst(1, traceItr->first);
				ConTrace newCT = {traceLst, 
					(traceItr->second).size * (traceItr->second).tripCount};
				
				conTraces.insert(make_pair(traceItr->first, newCT));
			}
			// printConsolTraces(funcName);
			
			// We want to keep growing the traces till no more traces can be patched
			bool patched_it;

			do {
				patched_it = false;
				// Start the consolidation logic
				for(map<BasicBlock*, ConTrace >::iterator conItr = conTraces.begin();
						conItr != conTraces.end(); conItr++) {

					ConTrace CT = conItr->second;
					bool canGrow = true;
				
					// logging	
					consolTraceFile << "Consol " << " " << conItr->first->getName().str() 
						<< "  " << conItr->second.size << "\n";
					
					while ((conItr->second.size < MIN_TRACE_SIZE) && (canGrow)) {
						// Get the last BB from the last trace present in ConTrace
						BasicBlock* lstHeadBB = (CT.headTraceLst).back();

						if (traces.find(lstHeadBB) == traces.end()) {
							errs() << "There is no trace starting with this BB \n";
							errs() << "This shouldn't happen \n";
							exit(1);
						}
						
						BasicBlock* lstBB = (traces[lstHeadBB].BBLst.size() != 0) ?
											traces[lstHeadBB].BBLst.back() : lstHeadBB;
						
						// logging
						consolTraceFile << "Last BB " << lstBB->getName().str() << endl;
						
						// Get the best successor trace for patching				
						double maxSuccSBWeight = 0;
						BasicBlock* patchBB = NULL;
							
						for (succ_iterator succIter = succ_begin(lstBB); succIter != succ_end(lstBB);	
								succIter++) {
						
							// logging	
							consolTraceFile << "Successor: " << (*succIter)->getName().str();
							
							if (conTraces.find(*succIter) !=  conTraces.end() &&
								 ((*succIter) != lstHeadBB))  {
								// There is a trace starting with the successor block and it is not 
								// the same trace that we are working on	
				
								double succSBWeight = (double)PI->getEdgeWeight(PI->getEdge(lstBB, *succIter));
								
								// logging
								consolTraceFile <<  " EW: " << succSBWeight << 
									" Size: " << conTraces[*succIter].size << endl;
							
								// Patch the best successor	
								if (conTraces[*succIter].size < MIN_TRACE_SIZE && (maxSuccSBWeight < succSBWeight)) {
									maxSuccSBWeight = succSBWeight;
									patchBB = *succIter;
								}
							} 
						}
						
						// patch the new trace
						if ((patchBB != NULL) ) {

							// if patchBB was a product of a backedge, there is nothing to consolidate
							if (patchBB == conItr->first) {
								consolTraceFile << "BE**\n";
								canGrow = false;
							}
			
							// check if we are missing out on a trace which is more likely to reach the patchBB,
							// than the current one. In that case, we should wait for the other trace to patch
							// this trace up.
							double maxEdgeWeight = 0;
							BasicBlock* prefBB = NULL;
							bool isLoop = (traces[patchBB].tripCount > 1) ? true : false;
							for (pred_iterator predIter = pred_begin(patchBB); predIter != pred_end(patchBB);
								predIter++ ) {
								double edgeWeight = PI->getEdgeWeight(PI->getEdge(*predIter, patchBB));
								
								// logging
								consolTraceFile << "Pred: " << (*predIter)->getName().str() << 
									" Edge weight: "<< edgeWeight << endl;

								// if this patchBB is header of a loop, then disregard the backedge predecessor
								// we don't want to consider it since the size of the loop is too small and 
								// growing the trace is more beneficial.
						 		pair<const BasicBlock*, const BasicBlock*> tmpBackEdgeCheck(*predIter, patchBB);	
								consolTraceFile << isLoop <<"\n";	
								if(isLoop && (backEdges->find(tmpBackEdgeCheck) != backEdges->end())) {
									// logging
									consolTraceFile << "Disregarding BE \n";
									continue;
								}
	
								// update the preferred predecessor
								if (edgeWeight > maxEdgeWeight) {
									prefBB = *predIter;
									maxEdgeWeight = edgeWeight;
								} 
							}	

							// logging
							consolTraceFile << "Preferred Pred: " << prefBB->getName().str() << endl;	
							
							// If the lstBB is not the preferred predecessor, then do not patch
							if (prefBB != lstBB) {
								consolTraceFile << lstBB->getName().str() << " " << prefBB->getName().str() <<"\n";
								canGrow = false;
								continue;
							}
			
							// logging	
							consolTraceFile << "Patching: "<< patchBB->getName().str() << endl;
							patched_it = true;	
					
							if (patchBB != conItr->first) {	
								// update the trace	
								CT.headTraceLst.insert(CT.headTraceLst.end(), 
									conTraces[patchBB].headTraceLst.begin(), conTraces[patchBB].headTraceLst.end());
								CT.size += conTraces[patchBB].size;
							} else {
								// since this is a loop, size should take in the trip count into account
								// TODO: How to get trip count in the middle of the loop. 	
							}

							// If the edge of between the lstBB reached the 
							conItr->second = CT;
							
							// remove the conTrace we just patched to make it no longer eligible 
							// for anymore patching	
							conTraces.erase(patchBB);
						} else {
							canGrow = false;
						}	
					}
				}
			} while(patched_it);
		}

		void printConsolTraces(string funcName) {
			if (conTraces.size() == 0) 
				return;
			
			for(map<BasicBlock*, ConTrace>::iterator conTItr = conTraces.begin(); 
				conTItr != conTraces.end(); conTItr++ ) {
				list<BasicBlock*> headTraceLst = conTItr->second.headTraceLst;
				if (conTItr->second.size > double(MIN_TRACE_SIZE)) {
				// Iterate all the head basic block of all traces
					traceFile << "Function " << funcName << endl;
					traceFile << conTItr->second.size << endl;	
					for (list<BasicBlock*>::iterator headItr = headTraceLst.begin();
						headItr != headTraceLst.end(); headItr++) {
						traceFile << "--" << (*headItr)->getName().str() << " ";

						// Iterate all basic blocks in every trace
						for(list<BasicBlock*>::iterator traceItr = traces[*headItr].BBLst.begin();
							traceItr != traces[*headItr].BBLst.end(); traceItr++) {
							traceFile << (*traceItr)->getName().str() << " " ;			
						}
					}
					traceFile << "\n";
				}
			}
		}


		void createOrderedTraces(Function *F) {
			
			map<BasicBlock*, ConTrace> conTrace;
			if (funcConTraceMap.find(F) != funcConTraceMap.end()) {
				conTrace.insert(funcConTraceMap[F].begin(), 
					funcConTraceMap[F].end());
			}
					
			if (conTrace.size() == 0) {
				return;
			}
	
			traceFile << "Function: " << getFName(F).c_str() << " " << conTrace.size() \
				<< endl;
			list<BasicBlock*> traceBB;
			for(map<BasicBlock*, ConTrace>::iterator conTItr = conTrace.begin(); 
				conTItr != conTrace.end(); conTItr++ ) {
				
				list<BasicBlock*> headTraceLst = conTItr->second.headTraceLst;

				if (conTItr->second.size > double(MIN_TRACE_SIZE)) {

					// Iterate all the head basic block of all traces
					for (list<BasicBlock*>::iterator headItr = headTraceLst.begin();
						headItr != headTraceLst.end(); headItr++) {
						traceBB.push_back(*headItr);
						
						// Iterate all basic blocks in every trace
						for(list<BasicBlock*>::iterator traceItr = allTraces[*headItr].BBLst.begin();
							traceItr != allTraces[*headItr].BBLst.end(); traceItr++) {
							traceBB.push_back(*traceItr);
						}

					}
					
					// Sort by post traversal order
					traceBB.sort(cmpBBByPostOrder());
					for(list<BasicBlock*>::iterator BI = traceBB.begin(); 
						BI != traceBB.end(); BI++) {
						traceFile << getBBName(*BI).c_str() << "\n";
					}
					traceFile << endl;

					// Get the predecessors of the BB at the head of the trace.
					// It is a switch point
					
					BasicBlock *head = traceBB.front();
					
					for(pred_iterator pi = pred_begin(head); pi != pred_end(head);
						pi++) {

						// Don't consider the BEs						
						pair<const BasicBlock*, const BasicBlock*> tmpBackEdgeCheck(head, *pi);
						if (backEdges->find(tmpBackEdgeCheck) != backEdges->end()) {
							continue;
						}
	
						traceFile << "Head Pred " << getBBName(*pi).c_str() << "\n";
					}

					 isLoop = true;
					// Insert an instruction at the end of the trace to stop
					// profiling the characteristics. For this, get the successors
					// of tail of the trace
					
					BasicBlock *tail = traceBB.back();
					
					for(succ_iterator si = succ_begin(tail); si != succ_end(tail);
						si++) {

						// Don't consider the BEs
						pair<const BasicBlock*, const BasicBlock*> tmpBackEdgeCheck(*si, tail);
						if (backEdges->find(tmpBackEdgeCheck) != backEdges->end()) {
							continue;
						}

						traceFile << "Tail succ " << getBBName(*si).c_str() << "\n";
					}
					
					
					traceBB.clear();
				}
			}
		}

		void copyTracesForInterFuncTracing(Function *F) {
			map <BasicBlock*, ConTrace, cmpBBByPostOrder> conMap;

			for(map<BasicBlock*, ConTrace>::iterator conTItr = conTraces.begin(); 
				conTItr != conTraces.end(); conTItr++ ) {
				if (conTItr->second.size > double(MIN_TRACE_SIZE)) {
					// Keep this conTrace
					conMap.insert(pair <BasicBlock*, ConTrace> (conTItr->first, conTItr->second));
					list<BasicBlock*> headTraceLst = conTItr->second.headTraceLst;
					// Keep the corresponding traces
					for (list<BasicBlock*>::iterator headItr = headTraceLst.begin();
						headItr != headTraceLst.end(); headItr++) {
						allTraces.insert(pair <BasicBlock*, Trace> (*headItr, traces[*headItr]));
					}
				}
			}
			funcConTraceMap.insert(make_pair(F,conMap));
		}

		void log_reason(string f, string bb, int reason) {
			logFile <<"Failure to expand: " <<  f << " " << bb << " " << reason << "\n";
			return;
		} 

		void printSuperBlocks(string funcName, set<pair<const BasicBlock*, const BasicBlock*> >* backEdges) {
			unsigned cnt = 0;
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
				
				BasicBlock* tail = head;	
				
				for (list<BasicBlock*>::iterator sp_b = (it_b->second).begin(), sp_e = (it_b->second).end();
 			        	sp_b != sp_e; ++sp_b) {
						// this basic block might have a backedge to the header
						tail = *sp_b;
						
						string bbName = (*sp_b)->hasName() ? (*sp_b)->getName() : "";
						traceFile << funcName << " " <<  bbName << "\n";
					
						// add to the size of the superblock
						superBlockSize += getSize(funcName, bbName);
				}
				
				traceFile <<  "SuperBlock size: " << superBlockSize << endl << endl;

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
		
		void checkCalledFuncs(Function *F) {

			for(Function::iterator FI = F->begin(); FI != F->end(); FI++) {
				BasicBlock *BB = &(*FI);
				for(BasicBlock::iterator BI = BB->begin(); BI != BB->end(); BI++) {

					Instruction* I = &(*BI);

					if (isa<CallInst>(I)) {
						CallInst* CI = dyn_cast<CallInst>(I);
						Function* CF = CI->getCalledFunction();

						if(F) { // F is NULL for indirect calls
							interFuncLogFile << getFName(F).c_str() << " " <<  getBBName(BB).c_str() << " calls " 
								<< getFName(CF).c_str() << "\n";	
							if(funcConTraceMap.find(CF) != funcConTraceMap.end()) {
								interFuncLogFile << "Found the trace of callee\n";
							}
						} else {
							errs() << "*** Indirect call ***\n\n";
						}
					}
				}
			}				
		}
	
	};
}

char TraceGen::ID = 0;
static RegisterPass<TraceGen> X("tracegen", "Trace Gen Pass");
