#include <fstream>
#include <iostream>
#include <sys/types.h>
#include <inttypes.h>
#include <map>
#include <vector>
#include <list>
#include <set>
#define _STDC_FORMAT_MACROS

#define dMap1MaxSize 512
#define dMap2MaxSize 4096
#define iMap1MaxSize 512
#define iMap2MaxSize 4096

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
// typedef std::map< uint32_t, CacheList::iterator > CacheMap;

//Map<Memory address, No.of L1 misses>
typedef std::map<uint32_t, std::pair<uint32_t, uint32_t> > CacheMissMap;

//Map<Branch ID, mispredict count>
typedef std::map<uint32_t, uint32_t> BranchMisMap;
typedef std::map<uint32_t, std::pair<uint32_t, uint32_t> > BBBranchMisMap;

// Branch mispredict counter per basic block
BBBranchMisMap *bb_br_mispr_map = new std::map<uint32_t, std::pair<uint32_t, uint32_t> >(); 

typedef pair<int, bool> Tag;
typedef pair<Tag, Tag> TagPair;
typedef map<int, TagPair > CacheMap;
typedef map<int, TagPair >::iterator CacheMapIT;

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
	static CacheMap *mcache1Map;
	static CacheMap *mcache2Map;
	static CacheMissMap *L1miss_map;
	static CacheMissMap *L2miss_map;
};

class icache{
	public:
		static CacheMap *mcache1Map;
		static CacheMap *mcache2Map;
		static CacheMissMap *L1miss_map;
		static CacheMissMap *L2miss_map;
};

// Initialization of static class members

// CacheMap* dcache::mcache1Map = new std::map<uint32_t, CacheList::iterator>();
// CacheMap* dcache::mcache2Map = new std::map<uint32_t, CacheList::iterator>();
CacheMap* dcache::mcache1Map = new CacheMap;
CacheMap* dcache::mcache2Map = new CacheMap;
CacheMissMap* dcache::L1miss_map = new std::map<uint32_t, std::pair<uint32_t, uint32_t> >();
CacheMissMap* dcache::L2miss_map = new std::map<uint32_t, std::pair<uint32_t, uint32_t> >();

//CacheMap*  icache::mcache1Map = new std::map<uint32_t, CacheList::iterator>();
//CacheMap* icache::mcache2Map = new std::map<uint32_t, CacheList::iterator>();
CacheMap*  icache::mcache1Map = new CacheMap;
CacheMap* icache::mcache2Map = new CacheMap;
CacheMissMap* icache::L1miss_map = new std::map<uint32_t, std::pair<uint32_t, uint32_t> >();
CacheMissMap* icache::L2miss_map = new std::map<uint32_t, std::pair<uint32_t, uint32_t> >();

// Initialization of the global variables
std::list<std::vector<int> > *mlp_list = new std::list<std::vector<int> >;
long mcache1Size = 0 , mcache2Size = 0, l1miss = 0, l2miss = 0;

/*
 * Method declarations
 */
void update_br_mispredict(BBBranchMisMap*, uint32_t, uint32_t, int);
int  do_cache(	CacheMap *mcache1Map, 
				CacheMap *mcache2Map, 
				CacheMissMap *L1miss_map,
				CacheMissMap *L2miss_map,
			 	uint64_t addr,
				uint32_t bb_id,
				bool type);
void update_miss_map(CacheMissMap*, uint32_t, int );
bool is_cache_miss(CacheMap* , int, int);
void insertInCache(CacheMap*, int, int);
void print_miss_maps();
void print_miss_map(CacheMissMap* miss_map, string type);

extern "C" void dCacheCounter(  const uint32_t bb_id,
								const uint32_t inst_id, 
								const uint64_t addr) {
	ofstream mlp_check_file;
	bool exists = false;
	std::list<std::vector<int> >:: iterator mlp_it;
	
	mlp_check_file.open("mlp_check.txt", ios::app);
	if(do_cache(dcache::mcache1Map, 
				dcache::mcache2Map,
				dcache::L1miss_map, 
				dcache::L2miss_map,
				addr,
				bb_id,
				1) == false) {
					
		mlp_it = mlp_list->begin();
		// Increase everyone's MLP
		while(mlp_it != mlp_list->end()) {
			if((*mlp_it)[0] == bb_id) {
				exists = true;
			}
			(*mlp_it)[1] = (*mlp_it)[1] + 1;
			mlp_it++;
		}
		// If the BB doesn't already exist
		if(exists == false) {
			std::vector<int> v;
			v.push_back(bb_id);
			v.push_back(0);
			v.push_back(80);
			mlp_list->push_back(v);
		}
	}
	return;
}

extern "C" void MLPCounter(uint32_t bb_id,
						   uint32_t num_insts) {

	std::list<std::vector<int> >:: iterator mlp_it;
	ofstream mlp_file;
	bool bb_exists = false;

	mlp_file.open("mlp.txt", ios::app);

	mlp_it = mlp_list->begin();
	while(mlp_it != mlp_list->end()) {
		// Substract the number of instructions executed
		(*mlp_it)[2] = (*mlp_it)[2] - num_insts;
	
		if((*mlp_it)[2] <= 0) {
			mlp_file << (*mlp_it)[0] <<" " << (*mlp_it)[1] << "\n";
			mlp_it = mlp_list->erase(mlp_it);
		}
		else {
			mlp_it++;
		}
	}
	mlp_file.close(); 
	
}

extern "C" void iCacheCounter(const uint32_t bb_id, const uint32_t size, const uint64_t start_addr) {

	// Assuming every instruction 4 bytes
	for(uint64_t inst_addr = start_addr; 
		inst_addr <= start_addr + size; inst_addr = inst_addr + 4) {
		do_cache(icache::mcache1Map, 
				icache::mcache2Map,
				icache::L1miss_map,
				icache::L2miss_map,
				inst_addr,	// Instruction ID
				bb_id,
				0);
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

	// 2-way saturating branch prediction map
	static branch_pred_map *bp = new std::map<
			uint32_t, std::pair<uint32_t, uint32_t> >();
	
	bool flag = false;
	int miss = 0;
	//2-way saturating Branch predictor
	branch_pred_it it  = bp->find(branchInstID);
	if(it == bp->end()){
		// Branch seen for the first time
		target_state_pair insertPair = make_pair(branchTargetID, 1);
		bp->insert(std::pair<uint32_t, std::pair<uint32_t, uint32_t> >(branchInstID, 
			insertPair));
	}	
	else{
		uint32_t curBrTargetID, curState, nxtState, nextBRTargetID;

		target_state_pair existingPair = it->second; 
		curBrTargetID = existingPair.first;
		curState = existingPair.second;
	
		DEBUG_MSG("branchinst " << branchInstID << " branchTarget " << branchTargetID << 
				" state " << curState << "\n");
		
		switch(curState) {	
		case 1: if (curBrTargetID == branchTargetID)
						nxtState = 1;
				  else{ 
						nxtState = 2;
						miss = 1;
					}
				  break;
		case 2: if(curBrTargetID == branchTargetID)
						nxtState = 1;
	    		  else{
						nxtState = 3;
						miss = 1;
						flag = true;
				  }
				  break;
		case 3: if(curBrTargetID == branchTargetID)
						nxtState = 4;
				  else{
						nxtState = 2;
						miss = 1;
						flag = true;
					}
				  break;
		case 4: if(curBrTargetID == branchTargetID)
						nxtState = 4;
				  else{
						nxtState = 3;
						miss = 1;
					}
					break;
		default: nxtState = 1; 
					cout<<"Incorrect behavior in the branch predictor";
		}
		
		update_br_mispredict(bb_br_mispr_map, bb_id, branchInstID, miss);
		DEBUG_MSG("branchinst " << branchInstID << " branchTarget " << branchTargetID << 
					" next state " << nxtState << "\n");

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
							uint32_t bb_id, 
							uint32_t branchInstID,
							int miss){
	DEBUG_MSG("Mispredict for BB " << bb_id);
	// BB ID doesn't exist
	if (bb_br_mispr_map->find(bb_id) == bb_br_mispr_map->end()) {
		if(miss)
			(*bb_br_mispr_map)[bb_id] = make_pair(1,1);
		else	
			(*bb_br_mispr_map)[bb_id] = make_pair(0,1);
	}	
	else {
		// Increase the miss count
		if(miss) {
			(((bb_br_mispr_map->find(bb_id))->second).first)++;
		}
		// Increment the total count
		(((bb_br_mispr_map->find(bb_id))->second).second)++;
	}
}

extern "C" void branchPrinter(void) {
	ofstream branch_mispredict_file;
	static bool open_file = false;
	if (!open_file)
		branch_mispredict_file.open("branch_mispredict.txt", ios::app);
	
	BBBranchMisMap::iterator it;
	for(it = bb_br_mispr_map->begin(); it!=bb_br_mispr_map->end(); it++) {
		branch_mispredict_file 	<< it->first << " " << (it->second).first \
								<< " " << (it->second).second << endl;
	}
	// branch_mispredict_file.close();
	// Clear the whole map for next time
	bb_br_mispr_map->clear();
	print_miss_maps();
} 

/* 
 * Returns true if the cache request was a hit
 * else returns false
 */
int do_cache(CacheMap *mcache1Map, 
			CacheMap *mcache2Map, 
			CacheMissMap *L1miss_map,
			CacheMissMap *L2miss_map,
			uint64_t addr,
			uint32_t bb_id,
			bool type){
    bool is_hit = true;
    int l1_Tag, l2_Tag, l1_blk, l2_blk;

    addr = addr >> 6;   // Removed the offset
    if (type == 1) {
        // D-cache
        l1_Tag = addr >> 9;
        l2_Tag = addr >> 12; 
        l1_blk = dMap1MaxSize-1 & addr; // Get only last 9 bits
        l2_blk = dMap2MaxSize-1 & addr; // Get only last 12 bits
    }   
    else if (type == 0) {
        // I-cache
        l1_Tag = addr >> 9;
        l2_Tag = addr >> 12; 
        l1_blk = iMap1MaxSize-1 & addr; // Get only last 9 bits
        l2_blk = iMap2MaxSize-1 & addr; // Get only last 12 bits
    }   

    if (is_cache_miss(mcache1Map, l1_blk, l1_Tag)) {
        // Miss in L1
        // update_miss_map(L1miss_map, bb_id, 1); 

        if (is_cache_miss(mcache2Map, l2_blk, l2_Tag)) {
            // Miss in both L1 and L2
            is_hit = false;
            // update_miss_map(L2miss_map, bb_id, 1); 
            insertInCache(mcache1Map, l1_blk, l1_Tag);
            insertInCache(mcache2Map, l2_blk, l2_Tag);
        }   
        else {
            // Hit in L2
            // update_miss_map(L2miss_map, bb_id, 0); 
            insertInCache(mcache1Map, l1_blk, l1_Tag);
        }   
    }   
    else {
        // Hit in L1
        // update_miss_map(L1miss_map, bb_id, 0);  
    }   
    return is_hit;
}

bool is_cache_miss(CacheMap *cacheMap, int blk, int tag) {
    CacheMapIT it;
    it = cacheMap->find(blk);
    if(it == cacheMap->end()) {
        return true;
    }
    else {
        TagPair tp = it->second;
        // Check Tag and the valid bit
        if (tp.first.first == tag && tp.first.second)
            return false;
        else if (tp.second.first == tag && tp.second.second) {
            // LRU in Tags. Refresh the Tag order
            Tag tmp = tp.second;
            tp.second = tp.first;
            tp.first = tmp;
            return false;
        }
        else
            return true;
    }
}

void insertInCache(CacheMap *cacheMap,
                    int blk,
                    int tag) {
    CacheMapIT it;
    it = cacheMap->find(blk);
    Tag t1,t2;
    if(it == cacheMap->end()) {
        // Block is being inserted for the first time
        t1 = make_pair(tag, 1);
        t2 = make_pair(0,0);
    }
    else {
        TagPair tp = it->second;
        t1 = make_pair(tag, 1);
        t2 = tp.first;
    }
    (*cacheMap)[blk] = make_pair(t1,t2);
}

void update_miss_map(CacheMissMap *miss_map, uint32_t bb_id, int miss){
	std::map<uint32_t, std::pair<uint32_t, uint32_t> >::iterator map_it;
	map_it = miss_map->find(bb_id);
	
	if(map_it==miss_map->end()){
		//Insert a new entry with count = 1 and total = 1 
		if(miss) {
			(*miss_map)[bb_id] = make_pair(1,1);
		}
		//Insert a new entry with count = 0 and total = 1 
		else {
			(*miss_map)[bb_id] = make_pair(0,1);
		}
	}
	else{
		if(miss) {
			((map_it->second).first)++;
			((map_it->second).second)++;
		}
		else {
			((map_it->second).second)++;
		} 
	}
}

void print_miss_maps() {
	print_miss_map(icache::L1miss_map , string("L1-I miss"));
	print_miss_map(icache::L2miss_map , string("L2-I miss"));

	print_miss_map(dcache::L1miss_map , string("L1-D miss"));
	print_miss_map(dcache::L2miss_map , string("L2-D miss"));
}

void print_miss_map(CacheMissMap *miss_map, string type) {
	ofstream cache_miss_file;
	type.append(".txt");
	cache_miss_file.open(type.c_str(), ios::app);
	std::map<uint32_t, std::pair<uint32_t, uint32_t> >::iterator map_it;
		
	for(map_it = miss_map->begin(); map_it != miss_map->end(); map_it++) {
		cache_miss_file << map_it->first << " " << \
		(map_it->second).first << " " << (map_it->second).second << "\n";	
	}
	miss_map->clear();
	cache_miss_file.close();
}
