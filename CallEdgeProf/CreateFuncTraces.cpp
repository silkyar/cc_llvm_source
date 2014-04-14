#define DEBUG_TYPE "create-func-traces"

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
#include "llvm/Analysis/CallGraphSCCPass.h"
#include "llvm/DebugInfo.h"
#include "llvm/Analysis/ProfileInfoLoader.h"
#include "llvm/Analysis/ProfileInfo.h"
#include "llvm/Support/InstIterator.h"
#include "llvm/Transforms/Utils/BasicBlockUtils.h"
#include "llvm/IR/TypeBuilder.h"
#include "llvm/InitializePasses.h"
#include "llvm/Analysis/CallGraph.h"

#include <iostream>
#include <fstream>
#include <sstream>
#include <stdlib.h>
#include <string>
#include <unistd.h>

#define MIN_TRACE_SIZE 1000000

using namespace llvm;
using namespace std;

namespace {

	struct CreateFuncTraces : public CallGraphSCCPass {

		static char ID;
		static int funcId;	
		static int callId;	
		// Dynamic call data from -insert-call-edge-profiling
		int* dynCallInfo;

		// Module information
		static int numCalls, numFuncs, numElements;

		// Maps
		//map<Function*, int>FuncToIdMap;
		map<int, string>IdToFuncMap;
		map<string, Function*>FuncNameToPtrMap;
		map<pair<string, string>, int>BBToSizeMap;
		map<Function*, double>FuncToDynSizeMap;
		map<string, unsigned>FuncToCallIdMap;

		// Analysis
		ProfileInfo* PI;

		// Files
		ofstream log, traceFile, err;
	
		CreateFuncTraces() : CallGraphSCCPass(ID) {
			// Open files for writing
			openOutFiles();
			
			// Load the dynmaic call information
			loadDynCallInfo();	

			// Load BB sizes
			loadBBSizes();

			// Load func and CallSite ids
			loadFuncCallIds();
		}
		
		~CreateFuncTraces() {
			// fix traces
			// fixParentChildTraces();
	
			// Print the final graph
			for (map<Function*, double>::iterator FItr = FuncToDynSizeMap.begin(); FItr != FuncToDynSizeMap.end();
				FItr++) {
				double size = FItr->second;
				if (size  > MIN_TRACE_SIZE) {
					traceFile << getFName(FItr->first).c_str() << " " << size << "\n";
				}
			}
			closeOutFiles();
			cleanup();
		}

		bool openOutFiles() {
			// Open file for logging
			log.open("logFile", ios::out);
			if (!log.is_open()) {
				return false;
			}
			
			traceFile.open("trace_file.txt", ios::out);
			if(!traceFile.is_open()) {
				return false;
			}

			err.open("err.txt", ios::out);
			if(!err.is_open()) {
				return false;
			}
			return true;
		}

		bool closeOutFiles() {
			log.close();
			traceFile.close();
			err.close();
	
			return true;
		}

		virtual void getAnalysisUsage(AnalysisUsage &AU) const {
			AU.setPreservesAll();
			AU.addRequired<CallGraph>();
			AU.addRequired<ProfileInfo>();
		}

		virtual bool runOnSCC(CallGraphSCC& SCC) {
			// Get edge profile information
			PI = &getAnalysis<ProfileInfo>();

			for (CallGraphSCC::iterator I = SCC.begin(), E = SCC.end(); I != E; ++I) {
    			Function *F = (*I)->getFunction();
    			
				if (F && !F->isDeclaration()) {
					// Estimate the dynamic number of instructions executed in this function
					double dynFSize = estimateDynFuncSize(F);
					FuncToDynSizeMap.insert(make_pair(F, dynFSize));
					FuncNameToPtrMap.insert(make_pair(getFName(F), F));
					runMerge(F);
				}	
  			}	

			return true;
		 }

		/*
		 * Check all callInsts in this function
		 * and see if its callees should be merged with it
		 */
		bool runMerge(Function* F) {

			if (PI->getExecutionCount(F) == 0) {
				return true;
			}
			// ogging 
			log << "Function " << getFName(F) << " with execution count " << \
				PI->getExecutionCount(F) << "\n";

			callId = getStartCallId(F);
			if (callId == 0) {
				err << "Start call Id not found for " << getFName(F) << "\n";
			}
			double allChildrenSize = 0, maxChildSize = 0;

			Function* largestChildNode;
			// Instruction* largestChildCallInst;
 
			for(Function::iterator FItr = F->begin(); FItr != F->end(); FItr++) {	
				BasicBlock* BB = &(*FItr);
			 	for(BasicBlock::iterator BBItr = BB->begin(); BBItr != BB->end(); BBItr++) {
					Instruction* I = &(*BBItr);
					
					if (I && isa<CallInst>(I)) {
						// get details for this callId
						map<Function*, double> callInfo;
						getCallInfo(callId, callInfo);
						for(map<Function*, double>::iterator cItr = callInfo.begin();
							cItr != callInfo.end(); cItr++) {
							
							// Size of one execution of the function
							double FDynSize = getDynSize(cItr->first);
							
							// Average number of times the function is called is equal to 
							// (number of times callsite was executed)/ (number of times the caller
							// is called)
							double avgNumCalls =  (double)cItr->second/(double)PI->getExecutionCount(F);
							double mergeFuncSize = avgNumCalls * FDynSize;
							
							// logging
							log << callId << " called  " << getFName(cItr->first) << " " <<	\
								cItr->second << " times. Size of callee " << FDynSize << "\n";
							log << "Avg " << avgNumCalls << " " <<  getFName(cItr->first) << \
								 " " << mergeFuncSize << "\n";
						
							// Update the number of instructions in the childern nodes	
							allChildrenSize += mergeFuncSize;

							// Update the maximum number of instructions in a child node
							if (maxChildSize < mergeFuncSize) {
								maxChildSize = mergeFuncSize;
								largestChildNode = FuncNameToPtrMap[getFName(cItr->first)];
								// largestChildCallInst = I;
							}
						}
						callId++;
					}
				}
			}

			/*
			 *
			 * Heuristic two - Here, if a child is big enough, it is not merged.
			 */
			// If the size of every child is less than the TRACE SIZE, 
			// then they all can be merged with the parent
			if (maxChildSize < MIN_TRACE_SIZE) {
				// Update the size of this function
				// logging
				log << "Merging childern for this function "<< allChildrenSize << "\n\n\n";
				FuncToDynSizeMap[F] = allChildrenSize + getDynSize(F);
			} else {
				log << "Biggest child " << getFName(largestChildNode) << "\n\n\n";
			}
			return false;
		} 

		/* 
		 * Parent node calls child node and both parent and child are separate traces
	     * Break the parent function at the call site and update size
	     */
		/*bool breakFunc(Function* parentNode, Function* childNode, 
			Instruction* largestChildCallInst) {
			
			BasicBlock* callSiteBB = largestChildCallInst->getParent();	
			Loop* callSiteBBLoop = LI->getLoopFor(callSiteBB);
			
			for (Function::iterator FItr = parentNode->begin(); FItr != parentNode.end();
				FItr++) {
				// calculate the size uptil the child func callsite
				
			}
		}*/

		bool fixParentChildTraces() {
			CallGraph &CG = getAnalysis<CallGraph>();

			list<Function*>funcTraceList;
			for (map<Function*, double>::iterator FItr = FuncToDynSizeMap.begin(); 
				FItr != FuncToDynSizeMap.end(); FItr++) {
				double size = FItr->second;
				if (size  > MIN_TRACE_SIZE) {
					funcTraceList.push_back(FItr->first);
				}
			}
			
			/* 
			 * We need to know if there is a path between any two traces in the graph,
			 * which means if one trace function calls another O(N^2) pairs and 
			 * O(N^2) for the modified graph seach algorithm. This is not very big because
			 * N is usually less than ~30
		     */

			/*
			 * A modified version of the Dijkstra's algorithm to find path between two nodes
  			 * in a graph ( A -> B)
			 */
			for(list<Function*>::iterator A = funcTraceList.begin(); A != funcTraceList.end();
				A++) {
				for(list<Function*>::iterator B = funcTraceList.begin(); B != funcTraceList.end();
					B++) {
	
					log << "Checking path between " << getFName(*A) << " and " << getFName(*B) << "\n";	
					if (*A == *B) 
						continue;
	
					// Check if there is a path to B from A	
					list<CallGraphNode* > dijQueue;
					list<CallGraphNode* > seenNodes;

					// insert source node
					dijQueue.push_back(CG[*A]);
	
					while(! dijQueue.empty()) {
						CallGraphNode* pathNode = dijQueue.front();
						dijQueue.pop_front();
				
						// insert all the children of the path node into the queue
						for(CallGraphNode::iterator CGNItr = pathNode->begin(); 
							CGNItr != pathNode->end(); CGNItr++) {
							
							CallGraphNode* pathChildNode = CGNItr->second;
							if (pathChildNode == CG[*B]) {

								// logging
								log << " There is a path from " <<  \
									getFName(*A) << " " << getFName(*B) << "\n";
								
								// break out of while
								break;
							}

							list<CallGraphNode* >::iterator fItr;  
							fItr = find(dijQueue.begin(), dijQueue.end(), pathChildNode);
							if(fItr != dijQueue.end()) 
								continue;

							fItr = find(seenNodes.begin(), seenNodes.end(), pathChildNode);
							if(fItr != seenNodes.end())
								continue;

							dijQueue.push_back(pathChildNode);
					
							// Maintain a list of seen nodes. Otherwise, dijkstra's would go into
							// an infinite loop when there are cycles
							seenNodes.push_back(pathChildNode);
						}
					}	
				}
			}
			return false;
		}


		bool loadFuncCallIds() {
			ifstream funcOrderFile;
			funcOrderFile.open("funcOrderFile.txt", ios::in);
			if (funcOrderFile.is_open()) {
				string funcName, line;
				unsigned startCallId;
				int funcId = 1;
				while(getline(funcOrderFile, line)) {
					stringstream linestream(line);
					linestream>>funcName>>startCallId;

					// Insert in map the start callID
					FuncToCallIdMap.insert(make_pair(funcName, startCallId));
					IdToFuncMap.insert(make_pair(funcId, funcName));
					funcId++;
				}
				return true;
			}
			return false;
		}
	
		unsigned getStartCallId(Function* F) {
			string key = getFName(F);
			map<string, unsigned>::iterator itr = FuncToCallIdMap.find(key);
			if(itr != FuncToCallIdMap.end()) {
				return itr->second;
			}
			return 0;
		}

		/*
		 * Returns the dynamic size of a function from the dynFuncSizeMap
		 */
		double getDynSize(Function *F) {
			map<Function*, double>::iterator itr = FuncToDynSizeMap.find(F);
			if(itr != FuncToDynSizeMap.end()) {
				return itr->second;
			}
			if (getFName(F).compare("") != 0)
				err << getFName(F).c_str() << " Function size not found. Bottom-up SCC went wrong "\
				<< "or recursive function encountered \n";
			return 0;
		}

		/* 
		 * Returns call info in the form of a map with entries
		 * <Function called, number of times called>
		 */
		void getCallInfo(int callId, map<Function*, double> &callInfo) {
			for(int i = 0; i< numFuncs; i++){
				double numCalls = dynCallInfo[callId*numFuncs + i];
				
				if (numCalls != 0) {
					log << "Callee ID " <<  IdToFuncMap[i] << "\n";
					map<string, Function*>::iterator FItr = FuncNameToPtrMap.find(IdToFuncMap[i]);
					if (FItr != FuncNameToPtrMap.end()) {	
						Function* callee = FuncNameToPtrMap[IdToFuncMap[i]];
						callInfo.insert(make_pair(callee, numCalls));
					} else {	
						err << IdToFuncMap[i] << " " << callId << \
							" Function name to pointer mapping not found. Could be a recursive function\n";
					}
				}
			}	
		}

		// This loads the number of instructions in a basic block	
		bool loadBBSizes() {
			char bb_file_path[1024], bb_file_name[]="/bb_offset_out_x86_32.txt";
			ifstream bb_file;

			// Get working directory
			if (getcwd(bb_file_path, sizeof(bb_file_path)) != NULL) {
           		strcat(bb_file_path, bb_file_name);
				bb_file.open(bb_file_path, ios::in);

				if(bb_file.is_open()) {
					string line;
					string func = "";
			
					while(getline(bb_file, line)) {
						// Read the contents and insert the size in the map
						string curFunc, curBB;
						int size, addr;
						stringstream linestream(line);
						linestream>>curFunc>>curBB>>std::hex>>addr>>std::dec>>size;
						BBToSizeMap.insert(make_pair(make_pair(curFunc, curBB),
							size));	
					}
					bb_file.close();
					return true;
				}
			}
			return false;
		}

		string getBBName(BasicBlock* BB) {
			return (BB->hasName())	? BB->getName() : "";
		}

		string getFName(Function* F) {
			return (F && F->hasName()) ? F->getName() : "";
		}
 
		double estimateDynFuncSize(Function* F) {
			double funcExCount = PI->getExecutionCount(F);
			double dyncFuncInsts = 0;
			for(Function::iterator FItr = F->begin(); FItr != F->end();
				FItr++) {
				// Get the execution count of this function
				double BBExCount = PI->getExecutionCount(&(*FItr));
		
				// Get the size of the BB from BBToSizeMap
				map<pair<string, string>, int>:: iterator itr = 
					BBToSizeMap.find(make_pair(getFName(F), getBBName(&(*FItr))));
				if (itr != BBToSizeMap.end()) {
					dyncFuncInsts += BBExCount * itr->second;
				}
			}
			if(funcExCount < 0) {
				// Could be a library function
				funcExCount = 0;
			}
			else if (funcExCount != 0) {
				return (double)dyncFuncInsts/funcExCount;
			}
			return 0;
		}	

		bool loadStaticCallGraph() {
			CallGraph& cg = getAnalysis<CallGraph>();
			for(CallGraph::const_iterator cgItr = cg.begin(); cgItr != cg.end();
				cgItr++) {
				if(CallGraphNode* CGN = cgItr->second) {
					Function* caller = CGN->getFunction();
					if (!caller || caller->isDeclaration())
						continue;
				}
			}
			return true;
		}

		bool loadDynCallInfo() {
			ifstream fin;
			fin.open("cg_data.txt", ios::in);

			if (! fin.is_open()) {
				err << "cg_data.txt not found \n";
				return false;
			}

			// Get number of functions and calls		
			string line;
			getline(fin,line);
			stringstream linestream(line);
			linestream>>std::dec>>numElements>>numFuncs;
			
			numCalls = numElements/numFuncs;

			dynCallInfo = new int[numElements];

			int callSiteId = 0, funcId = 0;
		
			while(getline(fin, line)) {
				stringstream linestream(line);
				int idx = callSiteId*numFuncs + funcId;
				for (int i = 0; i < numFuncs; i++) {
					linestream>>std::dec>>dynCallInfo[idx++];
				}
				funcId ++;
				
				if ((numFuncs != 0) && (idx % numFuncs == 0)) {
					callSiteId++;
					funcId = 0;
				}
			}
			return true;
		}

		bool printDynCallInfo() {
			if (dynCallInfo) {
				for(int i = 0; i< numElements; i++) {
					log << dynCallInfo[i] << " ";
					if ((i+1) % numFuncs == 0) {
						log << "\n";
					}
				}
				return true;	
			}
			return false;
		}

		void cleanup() {
			delete[] dynCallInfo;		
		}
	
	};

	char CreateFuncTraces::ID = 0;
	int CreateFuncTraces::callId = 0;
	int CreateFuncTraces::numCalls = 0;
	int CreateFuncTraces::numFuncs = 0;
	int CreateFuncTraces::numElements = 0;
	
	static RegisterPass<CreateFuncTraces> X("create-func-traces", "Create procedural traces", false, true);
}

