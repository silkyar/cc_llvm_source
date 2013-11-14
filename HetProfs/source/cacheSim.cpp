#include <iostream>
#include <sys/types.h>
#include <inttypes.h>
#include <map>
#include <vector>
#include <list>
#include <set>
#define _STDC_FORMAT_MACROS

#define dMap1MaxSize 1000
#define dMap2MaxSize 10000
#define iMap1MaxSize 1000
#define iMap2MaxSize 10000

#define OFFCHIP_LATENCY 60
using namespace std;

#ifdef DEBUG
#define DEBUG_MSG(str) do { std::cerr << str << std::endl; } while( false )
#else
#define DEBUG_MSG(str) do { } while ( false )
#endif

/*
 * TYPEDEFS
 */
//Map<Branch ID, pair<Branch target ID, Predictor state> > 
typedef std::map<uint32_t, std::pair<uint32_t, uint32_t> >branch_pred_map;

typedef std::map<uint32_t, std::pair<uint32_t, uint32_t> >::iterator branch_pred_it;

//Pair<Branch target ID, Predictor state>
typedef std::pair<uint32_t, uint32_t> target_state_pair;

//Pair<Memory address, Instruction ID>
typedef std::pair< uint32_t, uint32_t> EntryPair;

//Linked list of EntryPair
typedef std::list< EntryPair > CacheList;

//Map<Memory address, list iterator>
typedef std::map< uint32_t, CacheList::iterator > CacheMap;

//Map<Memory address, No.of L1 misses>
typedef std::map<uint32_t, uint32_t> CacheMissMap;

//Map<Branch ID, mispredict count>
typedef std::map<uint32_t, uint32_t> BranchMisMap;
typedef std::map<uint32_t, uint32_t> BBBranchMisMap;

// Branch mispredict counter per basic block
BBBranchMisMap *bb_br_mispr_map = new std::map<uint32_t, uint32_t>(); 


class MLPTuple {
	public:
	// Memory instruction ID
	int mem_inst_id;
	// Number of instructions this inst is supposed to wait for
	int wait_inst_count;
	// Average MLP
	int mlp;	
	// Number of times this instruction is called
	int call_count;

	MLPTuple(int id) {
		mem_inst_id = id;
		wait_inst_count = OFFCHIP_LATENCY;
		call_count = 1;
		mlp = 0;
	}
};

typedef std::map<uint32_t, std::list<MLPTuple> > MLPBuffer;

class dcache{

	public:
	static int last_seq_num;
	static CacheMap *mcache1Map;
	static CacheMap *mcache2Map;
	static CacheList *mcache1List;
	static CacheList *mcache2List;
	static CacheMissMap *L1miss_map;
	static CacheMissMap *L2miss_map;
	static  MLPBuffer *mlp_buffer;

	int getLastSeqNum() {
		return last_seq_num;
	}
	
	void setLastSeqNum(int seq_num) {
		last_seq_num = seq_num;
	}

};

class icache{

	public:
	static CacheMap *mcache1Map;
	static CacheMap *mcache2Map;
	static CacheList *mcache1List;
	static CacheList *mcache2List;
	static CacheMissMap *L1miss_map;
	static CacheMissMap *L2miss_map;

};

/*
 * Method declarations
 */

void update_br_mispredict(BBBranchMisMap*, BranchMisMap*, uint32_t, uint32_t);
int  do_cache(CacheMap *mcache1Map, 
				  CacheMap *mcache2Map, 
				  CacheList *mcache1List,
				  CacheList *mcache2List,
				  CacheMissMap *L1miss_map,
				  CacheMissMap *L2miss_map,
				  int maxL1Size,
				  int maxL2Size,
				  uint32_t instID, 
				  uint32_t addr);

void update_miss_map(CacheMissMap*, uint32_t );
bool isfullL1(int);
bool isfullL2(int);
void insertInL1(CacheMap*, CacheList*, int, uint32_t, uint32_t);
void insertInL2(CacheMap*, CacheList*, int, uint32_t, uint32_t); 
void swapWithL2(uint32_t, uint32_t);
bool is_cache_miss(CacheMap* , uint32_t);

long mcache1Size = 0 , mcache2Size = 0, l1miss = 0, l2miss = 0;

// Initialization of static class members
CacheMap* dcache::mcache1Map = new std::map<uint32_t, CacheList::iterator>();
CacheMap* dcache::mcache2Map = new std::map<uint32_t, CacheList::iterator>();
CacheList* dcache::mcache1List = new std::list< EntryPair>();
CacheList* dcache::mcache2List = new std::list< EntryPair>();
CacheMissMap* dcache::L1miss_map = new std::map<uint32_t, uint32_t>();
CacheMissMap* dcache::L2miss_map = new std::map<uint32_t, uint32_t>();
MLPBuffer* dcache::mlp_buffer = new std::map<uint32_t, std::list<MLPTuple> >();
int dcache::last_seq_num = 0;

CacheMap*  icache::mcache1Map = new std::map<uint32_t, CacheList::iterator>();
CacheMap* icache::mcache2Map = new std::map<uint32_t, CacheList::iterator>();
CacheList* icache::mcache1List = new std::list< EntryPair>();
CacheList* icache::mcache2List = new std::list< EntryPair>();
CacheMissMap* icache::L1miss_map = new std::map<uint32_t, uint32_t>();
CacheMissMap* icache::L2miss_map = new std::map<uint32_t, uint32_t>();

extern "C" void dCacheCounter(int bb_id,
								unsigned id, 
								int seq_num,
								const uint64_t addr) {
		
	if(do_cache(dcache::mcache1Map, 
				dcache::mcache2Map,
	 			dcache::mcache1List, 
				dcache::mcache2List, 
				dcache::L1miss_map, 
				dcache::L2miss_map,
				dMap1MaxSize,
				dMap2MaxSize,
				id, 
				addr) == false) {
		
	/*
 	 * Candidate for MLP
 	 * Subtract relative seq_num from all LDs
 	 * Add 1 to MLP of all LDs with non-zero wait_inst_count
 	 */
	
	//int num_inst_executed = seq_num - dcache::getLastSeqNum();

	/*std::map<int, MLPTuple
	MLPTuple tmpMLPTuple(id);
	dcache::mlp_buffer[id].append(tmp);
	*/
	
	}
	return;
}

extern "C" void MLPCounter(int bb_id,
								   int num_insts) {
	
	/*
 	 * Subtract num_insts from all LDs in the MLP buffer
 	 */
	//dcache.setRelSeqNum(0);	
			
}



extern "C" void iCacheCounter(const uint32_t size, const uint32_t start_addr) {

	for(int i = start_addr; i <= start_addr + size; i++) {
		do_cache(icache::mcache1Map, 
					icache::mcache2Map,
					icache::mcache1List,
					icache::mcache2List,
					icache::L1miss_map,
					icache::L2miss_map,
					iMap1MaxSize,
					iMap2MaxSize,
					i,			// Instruction ID
					i);		// Instruction address
	}
	return;
}

/* 
 * The state machine requires the next instruction the branch 
 * takes to decide whether or not the branch was taken and then 
 * calculates the number of mispredicts a 2 way saturating predictor 
 * would have made. It also updates the total branch mispredicts per
 * basic block, and the number of mispredicts per branch
 */
extern "C" void branchCounter(uint32_t bb_id, uint32_t branchInstID, 
	uint32_t branchTargetID){

	// Branch mispredict counter per branch	
	static BranchMisMap *branch_mispr_map = new std::map<uint32_t, uint32_t>(); 
	// 2-way saturating branch prediction map
	static branch_pred_map *bp = new std::map<
			uint32_t, std::pair<uint32_t, uint32_t> >();
	// Global mispredict count
	static long long br_mispredict_count = 0;
	
	bool flag = false;

	//2-way saturating Branch predictor
	branch_pred_it it  = bp->find(branchInstID);
	if(it == bp->end()){
		// Branch seen for the first time
		target_state_pair insertPair = make_pair(branchTargetID,1);
		bp->insert(std::pair<uint32_t, std::pair<uint32_t, uint32_t> >(branchInstID, 
			insertPair));
	}	
	else{
		uint32_t curBrTargetID, curState, nxtBrTargetID, nxtState, nextBRTargetID;

		target_state_pair existingPair = it->second; 
		curBrTargetID = existingPair.first;
		curState = existingPair.second;

		switch(curState) {	
		case 1: if (curBrTargetID == branchTargetID)
						nxtState = 1;
				  else{ 
						nxtState = 2;
						update_br_mispredict(bb_br_mispr_map, branch_mispr_map, bb_id, branchInstID);
						br_mispredict_count++; 
					}
				  break;
		case 2: if(curBrTargetID == branchTargetID)
						nxtState = 1;
	    		  else{
						nxtState = 3;
						br_mispredict_count++;
						update_br_mispredict(bb_br_mispr_map, branch_mispr_map, bb_id, branchInstID);
						flag = true;
				  }
				  break;
		case 3: if(curBrTargetID == branchTargetID)
						nxtState = 4;
				  else{
						nxtState = 2;
						br_mispredict_count++;
						update_br_mispredict(bb_br_mispr_map, branch_mispr_map, bb_id,  branchInstID);
						flag = true;
					}
				  break;
		case 4: if(curBrTargetID == branchTargetID)
						nxtState = 4;
				  else{
						nxtState = 3;
						update_br_mispredict(bb_br_mispr_map, branch_mispr_map, bb_id, branchInstID);
						br_mispredict_count++;
					}
					break;
		default: nxtState = 1; 
					cout<<"Incorrect behavior in the branch predictor";
		}

		if(flag)
			nextBRTargetID = branchTargetID;
		else
			nextBRTargetID = curBrTargetID;

		// Update predictor
		target_state_pair nxtPair = make_pair(nextBRTargetID, nxtState);
		it->second = nxtPair;	
	}
}


void update_br_mispredict(BBBranchMisMap *bb_br_mispr_map, 
							BranchMisMap *branch_mispr_map, 
							uint32_t bb_id, 
							uint32_t branchInstID){
	DEBUG_MSG("Mispredict for BB " << bb_id);
	// BB ID doesn't exist
	if (bb_br_mispr_map->find(bb_id) == bb_br_mispr_map->end()) {
		(*bb_br_mispr_map)[bb_id] = 1;
	}	
	else {
		(*bb_br_mispr_map)[bb_id] += 1;
	}

	//Branch ID doesn't exist
	if(branch_mispr_map->find(branchInstID)==branch_mispr_map->end()){
		(*branch_mispr_map)[branchInstID]=1;
	}				
	else{
		(*branch_mispr_map)[branchInstID]+=1;
	}
}

void branchPrinter() {
	
	BBBranchMisMap::iterator it;
	for(it = bb_br_mispr_map->begin(); it!=bb_br_mispr_map->end(); it++) {
		DEBUG_MSG("The number of mispredicts for basic block " << it->first << " is" 
			<< it->second);
	}
} 

/* 
 * Returns true if the cache request was a hit
 * else returns false
 */
int do_cache(CacheMap *mcache1Map, 
				  CacheMap *mcache2Map, 
				  CacheList *mcache1List,
				  CacheList *mcache2List,
				  CacheMissMap *L1miss_map,
				  CacheMissMap *L2miss_map,
				  int maxL1Size,
				  int maxL2Size,
				  uint32_t instID, 
				  uint32_t addr){
	
	bool is_hit = true;
   EntryPair ep = make_pair(addr, instID);	
	// Check in L1
	if(is_cache_miss(mcache1Map, addr)){
		l1miss++;
		update_miss_map(L1miss_map, instID);

		//Check in L2
		if(is_cache_miss(mcache2Map, addr)) {
			// Cache Miss. Fill in only L1 and L2 from memory
			is_hit = false;
			l2miss++;
			update_miss_map(L2miss_map, instID);
			insertInL1(mcache1Map, mcache1List, maxL1Size, instID, addr);
			insertInL2(mcache1Map, mcache1List, maxL2Size, instID, addr);
		}
		else {
			//Found in L2. Refresh L2 list and fill in L1
			mcache2List->remove(ep);
			mcache2List->push_front(ep);
			(*mcache2Map)[addr] = mcache2List->begin();	
			insertInL1(mcache1Map, mcache1List, maxL1Size, instID, addr);			
		}
	}
	else{
		//Entry found in L1. Refresh L1 list
		mcache1List->remove(ep);
		mcache1List->push_front(ep);
		(*mcache1Map)[addr] = mcache1List->begin();	
	}
	return is_hit;
}

bool is_cache_miss(CacheMap *cacheMap, uint32_t addr) {
	if(cacheMap->find(addr) == cacheMap->end()) 
		return true;
	else 
		return false;
}

//Insert in L1 an entry that is not present in L2
void insertInL1(CacheMap *mcache1Map, 
					 CacheList *mcache1List,
					 int l1MaxSize,
					 uint32_t instID, 
					 uint32_t addr){
	EntryPair ep = make_pair(addr, instID);	
	mcache1List->push_front(ep);
	(*mcache1Map)[addr] = mcache1List->begin();
	mcache1Size++;
	
	if(isfullL1(l1MaxSize)){
		//Map overflow. Remove the last entry (LRU).
		mcache1Map->erase((mcache1List->back().first));
		mcache1List->pop_back();
		mcache1Size--;
	}
}

//Insert in L2
void insertInL2(CacheMap *mcache2Map,
					 CacheList *mcache2List,
					 int l2MaxSize,
					 uint32_t instID, 
					 uint32_t addr){
	
	EntryPair ep = make_pair(addr, instID);
	mcache2List->push_front(ep);
	(*mcache2Map)[addr] = mcache2List->begin();
	mcache2Size++;
	
	if(isfullL2(l2MaxSize)){
		//Map overflow. Remove the last entry from L2
		mcache2Map->erase((mcache2List->back().first));
		mcache2List->pop_back();
		mcache2Size--;
	}
}


bool isfullL1(int Map1MaxSize){
	if(mcache1Size>Map1MaxSize)
		return true;
	else
		return false;
}

bool isfullL2(int Map2MaxSize){
	if(mcache2Size>Map2MaxSize)
		return true;
	else
		return false;
}

void update_miss_map(CacheMissMap *miss_map, uint32_t instID){
	std::map<uint32_t, uint32_t>::iterator map_it;
	map_it = miss_map->find(instID);
	
	if(map_it==miss_map->end()){
		//Insert a new entry with count = 1
		miss_map->insert(std::pair<uint32_t, uint32_t>(instID, 1));
	}
	else{
		//Entry found. Increment count by 1
		map_it->second +=1;
	}
}

