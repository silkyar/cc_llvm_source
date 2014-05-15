
//
//					  Static Program Analysis for LLVM
//
// This file is distributed under a Modified BSD License (see LICENSE.TXT).
//
//===----------------------------------------------------------------------===//
//
// This file defines the ControlDependenceGraph class, which allows fast and 
// efficient control dependence queries. It is based on Ferrante et al's "The 
// Program Dependence Graph and Its Use in Optimization."
//
//===----------------------------------------------------------------------===//

// DISCLAIMER
// The code for Control Dependency Graph been taken from Scott Moore's git repository
// https://github.com/thinkmoore/


#include "IntraProc/ControlDependenceGraph.h"

#include "llvm/Analysis/DOTGraphTraitsPass.h"
#include "llvm/ADT/PostOrderIterator.h"
#include "llvm/IR/Function.h"
#include "llvm/Support/CFG.h"
#include "llvm/Transforms/Utils/BasicBlockUtils.h"

#include <iostream>
#include <fstream>

#include <deque>
#include <set>

using namespace llvm;
using namespace std;


namespace llvm {

	// SEMEId to entry basic block map
	std::map <int, BasicBlock*> IDToEntryMap;

	// Ordering basic blocks to find the right entry to any SEME
	std::map <BasicBlock*, int> BBOrderedMap;

	struct cmpBBByPostOrder {
		bool operator() (BasicBlock* const a, BasicBlock* const b) const {
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

	void ControlDependenceNode::addTrue(ControlDependenceNode *Child) {
		TrueChildren.insert(Child);
	}

	void ControlDependenceNode::addFalse(ControlDependenceNode *Child) {
		FalseChildren.insert(Child);
	}

	void ControlDependenceNode::addOther(ControlDependenceNode *Child) {
		OtherChildren.insert(Child);
	}

	void ControlDependenceNode::addParent(ControlDependenceNode *Parent) {
		assert(std::find(Parent->begin(), Parent->end(), this) != Parent->end()
				&& "Must be a child before adding the parent!");
		Parents.insert(Parent);
	}

	void ControlDependenceNode::removeTrue(ControlDependenceNode *Child) {
		node_iterator CN = TrueChildren.find(Child);
		if (CN != TrueChildren.end())
			TrueChildren.erase(CN);
	}

	void ControlDependenceNode::removeFalse(ControlDependenceNode *Child) {
		node_iterator CN = FalseChildren.find(Child);
		if (CN != FalseChildren.end())
			FalseChildren.erase(CN);
	}

	void ControlDependenceNode::removeOther(ControlDependenceNode *Child) {
		node_iterator CN = OtherChildren.find(Child);
		if (CN != OtherChildren.end())
			OtherChildren.erase(CN);
	}

	void ControlDependenceNode::removeParent(ControlDependenceNode *Parent) {
		node_iterator PN = Parents.find(Parent);
		if (PN != Parents.end())
			Parents.erase(PN);
	}

	const ControlDependenceNode *ControlDependenceNode::enclosingRegion() const {
		if (this->isRegion()) {
			return this;
		} else {
			assert(this->Parents.size() == 1);
			const ControlDependenceNode *region = *this->Parents.begin();
			assert(region->isRegion());
			return region;
		}
	}

	ControlDependenceNode::EdgeType
		ControlDependenceGraphBase::getEdgeType(const BasicBlock *A, const BasicBlock *B) {
			if (const BranchInst *b = dyn_cast<BranchInst>(A->getTerminator())) {
				if (b->isConditional()) {
					if (b->getSuccessor(0) == B) {
						return ControlDependenceNode::TRUE;
					} else if (b->getSuccessor(1) == B) {
						return ControlDependenceNode::FALSE;
					} else {
						assert(false && "Asking for edge type between unconnected basic blocks!");
					}
				}
			}
			return ControlDependenceNode::OTHER;
		}

	void ControlDependenceGraphBase::computeDependencies(Function &F, PostDominatorTree &pdt) {
		root = new ControlDependenceNode();
		nodes.insert(root);

		for (Function::iterator BB = F.begin(), E = F.end(); BB != E; ++BB) {
			ControlDependenceNode *bn = new ControlDependenceNode(BB);
			nodes.insert(bn);
			bbMap[BB] = bn;
		}

		for (Function::iterator BB = F.begin(), E = F.end(); BB != E; ++BB) {
			BasicBlock *A = BB;
			ControlDependenceNode *AN = bbMap[A];

			for (succ_iterator succ = succ_begin(A), end = succ_end(A); succ != end; ++succ) {
				BasicBlock *B = *succ;
				assert(A && B);
				if (A == B || !pdt.dominates(B,A)) {
					BasicBlock *L = pdt.findNearestCommonDominator(A,B);
					ControlDependenceNode::EdgeType type = ControlDependenceGraphBase::getEdgeType(A,B);
					if (A == L) {
						switch (type) {
							case ControlDependenceNode::TRUE:
								AN->addTrue(AN); break;
							case ControlDependenceNode::FALSE:
								AN->addFalse(AN); break;
							case ControlDependenceNode::OTHER:
								AN->addOther(AN); break;
						}
						AN->addParent(AN);
					}
					for (DomTreeNode *cur = pdt[B]; cur && cur != pdt[L]; cur = cur->getIDom()) {
						ControlDependenceNode *CN = bbMap[cur->getBlock()];
						switch (type) {
							case ControlDependenceNode::TRUE:
								AN->addTrue(CN); break;
							case ControlDependenceNode::FALSE:
								AN->addFalse(CN); break;
							case ControlDependenceNode::OTHER:
								AN->addOther(CN); break;
						}
						assert(CN);
						CN->addParent(AN);
					}
				}
			}
		}

		// ENTRY -> START
		for (DomTreeNode *cur = pdt[&F.getEntryBlock()]; cur; cur = cur->getIDom()) {
			if (cur->getBlock()) {
				ControlDependenceNode *CN = bbMap[cur->getBlock()];
				assert(CN);
				root->addOther(CN); CN->addParent(root);
			}
		}
	}

	void ControlDependenceGraphBase::insertRegions(PostDominatorTree &pdt) {
		typedef po_iterator<PostDominatorTree*> po_pdt_iterator;  
		typedef std::pair<ControlDependenceNode::EdgeType, ControlDependenceNode *> cd_type;
		typedef std::set<cd_type> cd_set_type;
		typedef std::map<cd_set_type, ControlDependenceNode *> cd_map_type;

		cd_map_type cdMap;
		cd_set_type initCDs;
		initCDs.insert(std::make_pair(ControlDependenceNode::OTHER, root));
		cdMap.insert(std::make_pair(initCDs,root));

		for (po_pdt_iterator DTN = po_pdt_iterator::begin(&pdt), END = po_pdt_iterator::end(&pdt);
				DTN != END; ++DTN) {
			if (!DTN->getBlock())
				continue;

			ControlDependenceNode *node = bbMap[DTN->getBlock()];
			assert(node);

			cd_set_type cds;
			for (ControlDependenceNode::node_iterator P = node->Parents.begin(), E = node->Parents.end(); P != E; ++P) {
				ControlDependenceNode *parent = *P;
				if (parent->TrueChildren.find(node) != parent->TrueChildren.end())
					cds.insert(std::make_pair(ControlDependenceNode::TRUE, parent));
				if (parent->FalseChildren.find(node) != parent->FalseChildren.end())
					cds.insert(std::make_pair(ControlDependenceNode::FALSE, parent));
				if (parent->OtherChildren.find(node) != parent->OtherChildren.end())
					cds.insert(std::make_pair(ControlDependenceNode::OTHER, parent));
			}

			cd_map_type::iterator CDEntry = cdMap.find(cds);
			ControlDependenceNode *region;
			if (CDEntry == cdMap.end()) {
				region = new ControlDependenceNode();
				nodes.insert(region);
				cdMap.insert(std::make_pair(cds,region));
				for (cd_set_type::iterator CD = cds.begin(), CDEnd = cds.end(); CD != CDEnd; ++CD) {
					switch (CD->first) {
						case ControlDependenceNode::TRUE:
							CD->second->addTrue(region);
							break;
						case ControlDependenceNode::FALSE:
							CD->second->addFalse(region);
							break;
						case ControlDependenceNode::OTHER:
							CD->second->addOther(region); 
							break;
					}
					region->addParent(CD->second);
				}
			} else {
				region = CDEntry->second;
			}
			for (cd_set_type::iterator CD = cds.begin(), CDEnd = cds.end(); CD != CDEnd; ++CD) {
				switch (CD->first) {
					case ControlDependenceNode::TRUE:
						CD->second->removeTrue(node);
						break;
					case ControlDependenceNode::FALSE:
						CD->second->removeFalse(node);
						break;
					case ControlDependenceNode::OTHER:
						CD->second->removeOther(node);
						break;
				}
				region->addOther(node);
				node->addParent(region);
				node->removeParent(CD->second);
			}
		}

		// Make sure that each node has at most one true or false edge
		for (std::set<ControlDependenceNode *>::iterator N = nodes.begin(), E = nodes.end();
				N != E; ++N) {
			ControlDependenceNode *node = *N;
			assert(node);
			if (node->isRegion())
				continue;

			// Fix too many true nodes
			if (node->TrueChildren.size() > 1) {
				ControlDependenceNode *region = new ControlDependenceNode();
				nodes.insert(region);
				for (ControlDependenceNode::node_iterator C = node->true_begin(), CE = node->true_end();
						C != CE; ++C) {
					ControlDependenceNode *child = *C;
					assert(node);
					assert(child);
					assert(region);
					region->addOther(child);
					child->addParent(region);
					child->removeParent(node);
					node->removeTrue(child);
				}
				node->addTrue(region);
			}

			// Fix too many false nodes
			if (node->FalseChildren.size() > 1) {
				ControlDependenceNode *region = new ControlDependenceNode();
				nodes.insert(region);
				for (ControlDependenceNode::node_iterator C = node->false_begin(), CE = node->false_end();
						C != CE; ++C) {
					ControlDependenceNode *child = *C;
					region->addOther(child);
					child->addParent(region);
					child->removeParent(node);
					node->removeFalse(child);
				}
				node->addFalse(region);
			}
		}
	}

	// Get name of a basic block
	std::string ControlDependenceGraphBase::getBBName(BasicBlock* BB) {
		return (BB != NULL && BB->hasName()) ? BB->getName() : " ";
	}

	// Get name of a function
	std::string ControlDependenceGraphBase::getFName(Function* F) {
		return (F!= NULL && F->hasName()) ? F->getName() : " ";
	}

	// Returns the node list for every function and updates the edges list
	ControlDependenceGraphBase::NodeListTy ControlDependenceGraphBase::getNodeList(
		Function &F) {
	
		ofstream log;
		log.open("log.txt", ios::app);
			
		std::set<ControlDependenceNode*> visitedBBs;
		
		std::list<ControlDependenceNode*> nodeList;
		std::list<ControlDependenceNode*> preservedNodeList;

		nodeList.push_back(root);
		preservedNodeList.push_back(root);

		while(nodeList.size() != 0) {
			
			ControlDependenceNode* node = nodeList.front();
			nodeList.pop_front();
			visitedBBs.insert(node);

			for (ControlDependenceNode::edge_iterator C = node->begin(), CE = node->end();
				C != CE; ++C) {
				if (visitedBBs.find(*C) != visitedBBs.end()) {
					continue;
				}
				else {
					edges[*C].push_back(node);
					nodeList.push_back(*C);
					preservedNodeList.push_back(*C);
				}
			}
		}

		log.close();
		return preservedNodeList;
	}

	// Find the backedges in the directed control dependence graph
	bool ControlDependenceGraphBase::findBackEdges(Function &F, std::list<ControlDependenceNode*> nodeList) {
		std::map<ControlDependenceNode*, bool> visited;
		std::map<ControlDependenceNode*, bool> recurStack;

		for(std::list<ControlDependenceNode*>::iterator NItr = nodeList.begin(); 
			NItr != nodeList.end(); NItr++) {
			visited[*NItr] = false;
			recurStack[*NItr] = false;
		}

		// detect cycles 
		for(std::list<ControlDependenceNode*>::iterator NItr = nodeList.begin();
			NItr != nodeList.end(); NItr++) {
			if (visited[*NItr] == false) {
				findBEs(*NItr, visited, recurStack);
			}
		}
		return true;
	}

	bool ControlDependenceGraphBase::findBEs(ControlDependenceNode* node, 
		std::map<ControlDependenceNode*, bool> &visited, 
		std::map<ControlDependenceNode*, bool> &recurStack) {
		static int edgeId = 0;
		
		visited[node] = true;
		recurStack[node] = true;
	
		for (ControlDependenceNode::edge_iterator EItr = node->begin(); EItr != node->end();
			EItr++) {
			if (visited[*EItr] == false) {
			findBEs(*EItr, visited, recurStack); 
				} 
			else if (recurStack[*EItr]) {
			backEdges.insert(make_pair(make_pair(node, *EItr), edgeId++));
			}
		}
		recurStack[node] = false;
		return false;
	}

	/*
	 * This creates a reachable set for all ControlDependenceNodes
	 */
	void ControlDependenceGraphBase::getReachableSet(Function &F, NodeListTy nodeList, 
		RMapTy &descendantMap, RMapTy &reachMap) {
	
		ofstream log;
		log.open("log.txt", ios::app);
		errs() << "In function " << getFName(&F) << "\n";	
	
		for(NodeListTy::iterator NItr = nodeList.begin(); NItr != nodeList.end(); NItr ++) {
			ControlDependenceNode* root = *NItr;
			std::queue<ControlDependenceNode*> CDNQueue;
			CDNQueue.push(root);
		
			std::set<ControlDependenceNode*> decSet;
			std::set<ControlDependenceNode*> reachSet;
		
			while(CDNQueue.size() != 0) {
				ControlDependenceNode* cdn = CDNQueue.front();
				CDNQueue.pop();
				
				// Add the popped out node to set and add its children to the queue
				decSet.insert(cdn);
				if (!cdn->isRegion()) {
					reachSet.insert(cdn);
				}

				for (ControlDependenceNode::edge_iterator C = cdn->begin(), CE = cdn->end();
						C != CE; ++C) {
					std::pair<ControlDependenceNode*, ControlDependenceNode*> edge = make_pair(cdn, *C);
						
					if (backEdges.find(edge) != backEdges.end()) {
						continue;
					}
					if(decSet.find(*C) == decSet.end()) { 
						CDNQueue.push(*C);
					}
				}
			}
			// Add the descendant set to the map
			descendantMap.insert(make_pair(root, decSet));
			reachMap.insert(make_pair(root, reachSet));

			if (reachSet.size() == 0) {
				errs() << "Reach set size is 0 \n";
			}
		}
		log.close();
	}

	/*
	 * Returns the name of the node, 'Region' if the node is a region node
	 */
	std::string ControlDependenceGraphBase::getNodeName(ControlDependenceNode* node) {
		if (node->isRegion()) {
			return "Region";
		}
		BasicBlock* BB = node->getBlock();
		return ControlDependenceGraphBase::getBBName(BB);
	}

	/*
	 * Gives a ID to all BBs in a function in reverse post order
     */
	void ControlDependenceGraphBase::getBasicBlocksInOrder(Function *F) {
		static int id = 0; 
		ReversePostOrderTraversal<Function*> RPOT(F);
		for(ReversePostOrderTraversal<Function*>::rpo_iterator RI = RPOT.begin();
			RI != RPOT.end(); RI++) {
			BasicBlock* BB = *RI; 
			BBOrderedMap.insert(make_pair(BB, id++));
		}
	}
	
	void ControlDependenceGraphBase::SEMECreation(Function &F, SEMEMapTy* SEMEMap) {

		NodeListTy nodeList = getNodeList(F);
		findBackEdges(F, nodeList);	
		RMapTy descendantMap, reachMap;
		getReachableSet(F, nodeList, descendantMap, reachMap); 
		regionCreation(F, nodeList, descendantMap, reachMap, SEMEMap);
	}

	void ControlDependenceGraphBase::regionCreation(Function &F, NodeListTy nodeList, RMapTy descendantMap, RMapTy reachMap,
		SEMEMapTy* SEMEMap) {
		// reverse the nodeList (reverse breadth-wise topological order)
		std::map<int, std::set<ControlDependenceNode*> > funcSEMEMap;
		nodeList.reverse();
		for(NodeListTy::iterator NItr = nodeList.begin(); NItr != nodeList.end(); NItr++) {
			
			ControlDependenceNode* c = *NItr;
			bool meFound = false;

			// iterate through the reachable set
			for(std::set<ControlDependenceNode*>::iterator RItr = descendantMap[c].begin(); 
				RItr != descendantMap[c].end() && !meFound ; RItr++) {

				ControlDependenceNode* node = *RItr;

				// Skip c
				if (node == c) {
					continue;
				}

				// Find the edges with the node as the destination
				for(std::list<ControlDependenceNode*>::iterator SItr = edges[node].begin(); 
					SItr != edges[node].end(); SItr ++) {
					
					ControlDependenceNode *src = *SItr;
					if (descendantMap[c].find(src) == descendantMap[c].end()) {
						// This is a multiple entry region. Skip this node
						meFound = true;
						break;
					}
				}
			}
			if (! meFound) {
				BasicBlock* entry = getEntryBBToSEME(reachMap[c]);
				IDToEntryMap.insert(make_pair(SEMEId, entry));
				funcSEMEMap.insert(make_pair(SEMEId, reachMap[c]));
				SEMEId++;
			}
		}
		SEMEMap->insert(make_pair(&F, funcSEMEMap));
	}

	/*
 	 * Print the SEMEs
 	 */
	
	void ControlDependenceGraphs::printSEMEs(SEMEMapTy SEMEMap) {
		openLogFiles();

		for(SEMEMapTy::iterator FItr = SEMEMap.begin(); FItr != SEMEMap.end();
			FItr++) {
			log << "In function " << ControlDependenceGraphBase::getFName(FItr->first).c_str() << "\n";
			for(std::map<int, std::set<ControlDependenceNode*> >::iterator SItr =
				(FItr->second).begin(); SItr != (FItr->second).end(); SItr++) {

				int semeId = SItr->first;
				BasicBlock* entryBB = IDToEntryMap[semeId];
				log << "SEME Id: " << semeId << "\n";
				if (entryBB != NULL)  {
					log << "Entry to SEME " << 
						ControlDependenceGraphBase::getBBName(entryBB).c_str() << "\n";
				}
				
				for(std::set<ControlDependenceNode*> ::iterator nodeItr = (SItr->second).begin();
					nodeItr != (SItr->second).end(); nodeItr++) {
					log << ControlDependenceGraphBase::getNodeName(*nodeItr) << " ";
				}

				log << endl;
			}
			log << endl;
		}
		closeLogFiles();
	}

	/*
 	 * Compute function sizes
 	 */ 	
	bool ControlDependenceGraphs::runPassOnSCC(CallGraphSCC& SCC) {
		for(CallGraphSCC::iterator I = SCC.begin(), E = SCC.end(); I != E; ++I) {
			Function *F = (*I)->getFunction();
			if (F && !F->isDeclaration()) {
				errs() << "In function " << ControlDependenceGraphBase::getFName(F).c_str() << "\n";
				computeSizes(F);
			}								
		}
		return false;	
	}

	/* 
 	 * Load the sizes of all the basic blocks from objdump
 	 */ 	
	void ControlDependenceGraphs::loadBBSizes() {
		ifstream fin;
		fin.open("bb_offset_out_x86_32.txt", ios::in);
		
		if(!fin.is_open()) {
			return;
		}
		
		string line, func, bb;
		int addr, size;
		while(getline(fin, line)) {
			std::stringstream linestream(line);
			linestream>>func>>bb>>std::hex>>addr>>std::dec>>size;
		
			std::pair<string, string> bblk = make_pair(func, bb);
			std::pair<int, int> add = make_pair(size, addr);

			bbOffsetSizeMap.insert(std::make_pair(bblk, add));
			errs() << size << "\n";
		}
		fin.close();
	}

	/*
 	 * Get the entry block to a SEME.
 	 * Sorts the basic blocks as per the objdump order
 	 * and returns the first BB
 	 */ 
	BasicBlock* ControlDependenceGraphBase::getEntryBBToSEME(
		std::set<ControlDependenceNode *> reachSet) {
	
		std::list<BasicBlock* > nLst;
		for(std::set<ControlDependenceNode*>::iterator it = reachSet.begin(); 
			it != reachSet.end(); it++) {
			BasicBlock* bb = (*it)->getBlock();
			nLst.push_back(bb);	
		}
		nLst.sort(cmpBBByPostOrder());
		if (nLst.size() == 0) {
			errs() << "No entry found " << "\n";
		}
		return nLst.front();
	}
	
	
	/*
 	 * Look at the the semes of this function and compute
 	 * their sizes
 	 */
	void ControlDependenceGraphs::computeSizes(Function *F) {
		std::map<BasicBlock*, std::set<BasicBlock*> >regionMap;
		SEMEMapTy::iterator SEMEMapItr;
		SEMEMapItr = SEMEMap.find(F);
		
		if (SEMEMapItr == SEMEMap.end()) {
			errs() << "computeSizes : Function not found in the SEMEMap\n";
			return;
		}

		std::map<int, std::set<ControlDependenceNode*> > 
			funcSEMEMap = SEMEMapItr->second;

		// Find how many times the function got executed
		double semeSize = 0;

		// Compute the size of each SEME
		for(std::map<int, std::set<ControlDependenceNode*> >::iterator 
			funcSEMEMapItr = funcSEMEMap.begin(); funcSEMEMapItr != funcSEMEMap.end(); 
			funcSEMEMapItr++) {
			
			semeSize = 0;
			bool existsTraceRegion = false;
			int semeId = funcSEMEMapItr->first;

			// logging
			errs() << "\n SEME Id " << semeId << "\n";

			BasicBlock* entry = IDToEntryMap[semeId];
			double entryExecCount = getEntryExecCount(F, entry, funcSEMEMapItr->second);

			// Iterate through all the nodes in the SEME
			for(std::set<ControlDependenceNode* >::iterator node = 
				funcSEMEMapItr->second.begin(); node != funcSEMEMapItr->second.end() 
				; node++) {

				if ((*node)->isRegion()) {
					continue;
				}

				// Get the size of the basic block node
				double bbSize = getBBSize(F, (*node)->getBlock(), existsTraceRegion);
				double bbExecCount = getBBExecCount(F, (*node)->getBlock(), 
					funcSEMEMapItr->second, entry);	
				double dynBBSize = 0;
				
				if (entryExecCount != 0) {
					dynBBSize =	(bbSize * bbExecCount)/entryExecCount;
				}
				
				semeSize += dynBBSize;
				errs() << semeSize << " " << entryExecCount << " " << bbSize << " " << 
					bbExecCount << " " << dynBBSize << "\n";
			}

			if (semeSize >= REGION_THRES) {
				if (!existsTraceRegion) {
					storeRegion(F, semeId, regionMap);
				}
			}	
			SEMESizeMap.insert(make_pair(semeId, semeSize));
		}

		// Function size is the size of the last (complete function) seme
		FuncSizeMap.insert(make_pair(F, semeSize));
		updateRegionFile(F, regionMap);
	}

	void ControlDependenceGraphs::storeRegion(Function* F, int semeId, 
		std::map<BasicBlock*, std::set<BasicBlock*> > &regionMap) {

		SEMEMapTy::iterator SEMEMapItr;
		SEMEMapItr = SEMEMap.find(F);
		
		std::map<int, std::set<ControlDependenceNode*> > 
			funcSEMEMap = SEMEMapItr->second;	

		std::set<ControlDependenceNode*> semeSet = funcSEMEMap[semeId];
		std::set<BasicBlock*> tailSet;

		// create a set of seme in BB format
		std::set<BasicBlock*> BBSEMESet;
		for(std::set<ControlDependenceNode*>::iterator SItr = semeSet.begin();
			SItr != semeSet.end(); SItr++) {
			
			if((*SItr)->isRegion()) {
				continue;
			}

			BasicBlock* node = (*SItr)->getBlock();
			BBSEMESet.insert(node);
		}

		// If the new region is only a parent region enclosing an existing
		// big region, we don't need to proceed
		// Inefficient way to check. TODO

		// Check if any of the existing heads are part of the new SEME. If yes,
		// return

		bool parentRegion = false;
		for(std::map<BasicBlock*, std::set<BasicBlock*> >::iterator RItr = regionMap.begin();
			RItr != regionMap.end(); RItr++) {
			if (BBSEMESet.find(RItr->first) != BBSEMESet.end()) {
				errs() << "This is a parent region. \n";
				parentRegion = true;
				break;
			}
		}

		if (parentRegion == true) {
			return;
		}

		// Find all the region nodes and the head/tail BB of the region
		
		findRegionNodes(F, BBSEMESet);
		
		// Header BB
		BasicBlock* head = IDToEntryMap[semeId];
		for(std::set<BasicBlock*>::iterator SItr = BBSEMESet.begin();
			SItr != BBSEMESet.end(); SItr++) {
			BasicBlock* node = *SItr;
			
			// Tail BBs for the region
			for(succ_iterator SUItr = succ_begin(node); SUItr != succ_end(node);
				SUItr++) {
				BasicBlock* succBB = *SUItr;	
				if (BBSEMESet.find(succBB) == BBSEMESet.end()) {
					tailSet.insert(succBB);
				}
			}
		}
		regionMap.insert(make_pair(head, tailSet));
	}

	/*
	 * Find all the basic blocks that belong to a region
	 * (includes the ones the called functions)
	 */
	void ControlDependenceGraphs::findRegionNodes(Function* F,
		std::set<BasicBlock*> BBSEMESet) {
	
		ofstream regionNodesFile;
		regionNodesFile.open("regionNodes.txt", ios::app);

		std::queue<Function *> funcQueue;
		std::set<Function*> visitedFuncSet;
	
		// Add the current function
		visitedFuncSet.insert(F);

		for(std::set<BasicBlock*>::iterator BItr = BBSEMESet.begin();
			BItr != BBSEMESet.end(); BItr++) {
			BasicBlock* node = (*BItr);
			
			regionNodesFile << ControlDependenceGraphBase::getFName(F) << " " << 
					ControlDependenceGraphBase::getBBName(node) << "\n";

				
			for(BasicBlock::iterator IItr = node->begin(); IItr != node->end();
						IItr++) {
				
				Instruction *I = &(*IItr);
				
				if(!isa<CallInst>(I)) {
					continue;
				}
				
				CallInst* CI = dyn_cast<CallInst>(I);
				Function* CF = CI->getCalledFunction();
				
				if(CF && !CF->isDeclaration()) {
					if (visitedFuncSet.find(CF) == visitedFuncSet.end()) {
						// Add the functions called by SEME BBs if not already
						// in the queue
						funcQueue.push(CF);
						visitedFuncSet.insert(CF);
					}
				}
			}
		}

		while(funcQueue.size() > 0) {
			Function* curF = funcQueue.front();
			funcQueue.pop();


			for(Function::iterator BBItr = curF->begin(); BBItr != curF->end();
				BBItr++) {

				regionNodesFile << ControlDependenceGraphBase::getFName(curF) << " " << 
					ControlDependenceGraphBase::getBBName(&(*BBItr)) << "\n";

				for(BasicBlock::iterator IItr = (*BBItr).begin(); IItr != (*BBItr).end();
					IItr++) {
					Instruction *I = &(*IItr);
					if (isa<CallInst>(I)) {
						CallInst* CI = dyn_cast<CallInst>(I);
						Function *CF = CI->getCalledFunction();
						if (CF && !CF->isDeclaration()) {
							if (visitedFuncSet.find(CF) == visitedFuncSet.end()) {
								regionNodesFile << visitedFuncSet.size () << "\n";
								// Prevents infinite loop due to recursion
								funcQueue.push(CF);
								visitedFuncSet.insert(CF);	
							} 
						}
					}
				}
			}
		}
		regionNodesFile << endl;
		regionNodesFile.close();
	}


	void ControlDependenceGraphs::updateRegionFile(Function *F,
		std::map<BasicBlock*, std::set<BasicBlock*> > regionMap) {
		if (regionMap.size() == 0) {
			return;
		}

		ofstream regionFile;
		regionFile.open("trace_file.txt", ios::app);

		std::map<BasicBlock*, std::set<BasicBlock*> >::iterator RItr;
		for(RItr = regionMap.begin(); RItr != regionMap.end(); RItr++) {

			// Add head
			regionFile << "H " << ControlDependenceGraphBase::getFName(F) << " " <<
				ControlDependenceGraphBase::getBBName(RItr->first) << " ";

			// Go through all seme nodes to find tails
			bool foundTail = false;
			for(std::set<BasicBlock*>::iterator SItr = RItr->second.begin();
				SItr != RItr->second.end(); SItr++) {
				regionFile << "T " << ControlDependenceGraphBase::getFName(F) << " " <<
					ControlDependenceGraphBase::getBBName(*SItr) << " ";
				foundTail = true;
			}
			if (!foundTail) {
				UnifyFunctionExitNodes* UEN;
				UEN = &getAnalysis<UnifyFunctionExitNodes>(*F);
				if(UEN != NULL && UEN->getReturnBlock() != NULL) {
					BasicBlock *exit = UEN->getReturnBlock();
					regionFile << "T " << ControlDependenceGraphBase::getFName(F) << " " <<
					ControlDependenceGraphBase::getBBName(exit) << " ";
				}
			}
			
			regionFile << endl;
		}
	}
	
	/* 
 	 * Get the execution count of the entry basic block of the SEME 
 	 */ 
	double ControlDependenceGraphs::getEntryExecCount(Function *F, BasicBlock* BB,
		std::set<ControlDependenceNode*> semeSet) {

		double totalEdgeWeight = 0;

		bool foundEdge = false;

		std::set<BasicBlock*> BBSemeSet;
		// Get a list of seme nodes in BB form
		for(std::set<ControlDependenceNode*>::iterator SItr = semeSet.begin();
			SItr != semeSet.end(); SItr++) {
			if ((*SItr)->isRegion()) {
				continue;
			}
			BasicBlock* node = (*SItr)->getBlock();
			BBSemeSet.insert(node);
		}

		for(pred_iterator PItr = pred_begin(BB); PItr != pred_end(BB); PItr++) {
			std::pair<const BasicBlock*, const BasicBlock*> tmpBackEdgeCheck(*PItr, BB);
			if (CFGBackEdges.find(tmpBackEdgeCheck) == CFGBackEdges.end()) {
				foundEdge = true;
				totalEdgeWeight += PI->getEdgeWeight(PI->getEdge(*PItr, BB));
			} else  if (BBSemeSet.find(*PItr) == BBSemeSet.end()) {
				// The backedge should be from within the seme
				totalEdgeWeight += PI->getEdgeWeight(PI->getEdge(*PItr, BB));
			} else {
				errs() << "Backedge between " << ControlDependenceGraphBase::getBBName(*PItr) 
					<< " " << ControlDependenceGraphBase::getBBName(BB);
			}
		} 

		// If no pred, then its the function entry block. Return the function execution
		// count in this case
		if (! foundEdge) {
			totalEdgeWeight = PI->getExecutionCount(F);
		}
		return totalEdgeWeight;
	}

	/*
	 * Get the execution count of the BB
	 */
	double ControlDependenceGraphs::getBBExecCount(Function *F, BasicBlock* BB, 
		std::set<ControlDependenceNode*> semeSet, BasicBlock* entryBB) {
		double totalEdgeWeight = 0;

		errs() << "BB exec count for " << 	
			ControlDependenceGraphBase::getBBName(BB) << "\n";
		for(pred_iterator PItr = pred_begin(BB); PItr != pred_end(BB); PItr++) {
	
			if (entryBB == BB) {
				totalEdgeWeight += PI->getEdgeWeight(PI->getEdge(*PItr, BB));
				errs() << ControlDependenceGraphBase::getBBName(*PItr) << " " <<
						ControlDependenceGraphBase::getBBName(BB) << "\n";
				errs() << totalEdgeWeight << "\n";
				continue;
			}

			for(std::set<ControlDependenceNode*>::iterator SItr = semeSet.begin();
				SItr != semeSet.end(); SItr++ ) {
				if( (*SItr)->isRegion()) {
					continue;
				}
				BasicBlock* node = (*SItr)->getBlock();
				
				// If the BB is the entryBB of the seme, then all the pred edges are
				// taken into account. Otherwise, only the edges with predecessors
				// that are part of the seme are taken into consideration
				if (node == *PItr) {
					totalEdgeWeight += PI->getEdgeWeight(PI->getEdge(*PItr, BB));
					errs() << ControlDependenceGraphBase::getBBName(*PItr) << " " <<
						ControlDependenceGraphBase::getBBName(BB) << "\n";
					errs() << totalEdgeWeight << "\n";
				}
			}
		}
		if (&(F->getEntryBlock()) == BB) {
			totalEdgeWeight += PI->getExecutionCount(F);
		}

		return totalEdgeWeight;
	}

	/*
 	 * Get the backedges in the control flow graph 
 	 */
	void ControlDependenceGraphs::getCFGBackEdges(Function *F) {
		SmallVector<pair<const BasicBlock*, const BasicBlock*> , 64> backEdgesVector;
		FindFunctionBackedges(*F, backEdgesVector);
		CFGBackEdges.insert(backEdgesVector.begin(), backEdgesVector.end());	
	}


	/*
     * Compute the size of the basic block based on its size and the size of 
     * any callee function
     */ 
	double ControlDependenceGraphs::getBBSize(Function *F, BasicBlock *BB, bool &existsTraceRegion ) {
	
		double totalSize = 0;

		std::pair<string, string> funcBBName = make_pair(ControlDependenceGraphBase::getFName(F), 
			ControlDependenceGraphBase::getBBName(BB));

		std::map<BasicBlock*, double>::iterator BBSizeMapItr = BBSizeMap.find(BB);
		if (BBSizeMapItr != BBSizeMap.end()) {
			if (BBSizeMapItr->second >= REGION_THRES) {
				existsTraceRegion = true;
				return BBSizeMapItr->second;
			}
		}

		// Get the size of the basic block from the objdump
		// Then add the size of the semes that of the callee functions, if any

		std::map<std::pair<std::string, std::string>, std::pair<int, int> >::iterator bbOffSizeMapItr;
		bbOffSizeMapItr = bbOffsetSizeMap.find(funcBBName);
	
		if(bbOffSizeMapItr != bbOffsetSizeMap.end()) {
			totalSize = (double)(bbOffSizeMapItr->second).first;
		} else {
			errs() << "BB size not found from dump \n";
		}

		for(BasicBlock::iterator BBItr = BB->begin(); BBItr != BB->end(); BBItr++) {
			Instruction *I = &(*BBItr);
			if(!isa<CallInst>(I)) {
				continue;
			}
			CallInst* CI = dyn_cast<CallInst>(I);
			Function* CF = CI->getCalledFunction();
			
			// Indirect call
			if(! CF) {
				continue;
			}

			FuncSizeTy::iterator funcSizeItr = FuncSizeMap.find(CF);
			errs() << " callee " << ControlDependenceGraphBase::getFName(CF).c_str() <<"\n";
			if(funcSizeItr == FuncSizeMap.end()) {
				errs() << " Callee function " << 
					ControlDependenceGraphBase::getFName(CF).c_str() << 
					" size is unknown \n";
				return 0;
			}
			
			if (funcSizeItr->second >= REGION_THRES) {
				existsTraceRegion = true;
			} 
			totalSize += funcSizeItr->second;	
		}	
		
		setBBSize(BB, totalSize);
		return totalSize;
	}
		
	/* 
 	 * Store the size of the basic block to avoid recomputation
 	 */ 
	void ControlDependenceGraphs::setBBSize(BasicBlock* BB, double size) {
		BBSizeMap.insert(make_pair(BB, size));	
	}

	void ControlDependenceGraphBase::graphForFunction(Function &F, PostDominatorTree &pdt) {
		computeDependencies(F,pdt);
		insertRegions(pdt);
	}

	bool ControlDependenceGraphBase::controls(BasicBlock *A, BasicBlock *B) const {
		const ControlDependenceNode *n = getNode(B);
		assert(n && "Basic block not in control dependence graph!");
		while (n->getNumParents() == 1) {
			n = *n->parent_begin();
			if (n->getBlock() == A)
				return true;
		}
		return false;
	}

	bool ControlDependenceGraphBase::influences(BasicBlock *A, BasicBlock *B) const {
		const ControlDependenceNode *n = getNode(B);
		assert(n && "Basic block not in control dependence graph!");

		std::deque<ControlDependenceNode *> worklist;
		worklist.insert(worklist.end(), n->parent_begin(), n->parent_end());

		while (!worklist.empty()) {
			n = worklist.front();
			worklist.pop_front();
			if (n->getBlock() == A) return true;
			worklist.insert(worklist.end(), n->parent_begin(), n->parent_end());
		}

		return false;
	}

	const ControlDependenceNode *ControlDependenceGraphBase::enclosingRegion(BasicBlock *BB) const {
		if (const ControlDependenceNode *node = this->getNode(BB)) {
			return node->enclosingRegion();
		} else {
			return NULL;
		}
	}
	
} // namespace llvm

namespace {

	struct ControlDependenceViewer
		: public DOTGraphTraitsViewer<ControlDependenceGraph, false> {
			static char ID;
			ControlDependenceViewer() : 
				DOTGraphTraitsViewer<ControlDependenceGraph, false>("control-deps", ID) {}
		};

	struct ControlDependencePrinter
		: public DOTGraphTraitsPrinter<ControlDependenceGraph, false> {
			static char ID;
			ControlDependencePrinter() :
				DOTGraphTraitsPrinter<ControlDependenceGraph, false>("control-deps", ID) {}
		};

} // end anonymous namespace

char ControlDependenceGraph::ID = 0;
static RegisterPass<ControlDependenceGraph> Graph("function-control-deps",
		"Compute control dependency graphs",
		true, true);

char ControlDependenceGraphs::ID = 0;
static RegisterPass<ControlDependenceGraphs> Graphs("module-control-deps",
		"Compute control dependency graphs for an entire module",
		true, true);

char ControlDependenceViewer::ID = 0;
static RegisterPass<ControlDependenceViewer> Viewer("view-control-deps",
		"View the control dependency graph",
		true, true);

char ControlDependencePrinter::ID = 0;
static RegisterPass<ControlDependencePrinter> Printer("print-control-deps",
		"Print the control dependency graph as a 'dot' file",
		true, true);
