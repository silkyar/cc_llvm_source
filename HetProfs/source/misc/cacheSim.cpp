#include<iostream>
#include "llvm/Analysis/ProfileInfoTypes.h"
#include <sys/types.h>
#include <inttypes.h>
#include <map>
#include <vector>
#include <list>

#define _STDC_FORMAT_MACROS

#define Map1MaxSize 1000
#define Map2MaxSize 10000

void do_cache(uint32_t, uint32_t);

void update_L1miss_map(uint32_t );
void update_L2miss_map(uint32_t );

bool isfullL1();
bool isfullL2();

void insertInL1(uint32_t, uint32_t);
void insertInL2(uint32_t, uint32_t);
void swapWithL2(uint32_t, uint32_t);

void update_br_mispredict(uint32_t);

using namespace std;

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

CacheMap 	mcache1Map;
CacheList 	mcache1List;
CacheMissMap L1miss_map;
CacheMap 	mcache2Map;
CacheList 	mcache2List;
CacheMissMap L2miss_map;

BranchMisMap branch_mispr_map;
branch_pred_map bp;

long mcache1Size = 0 , mcache2Size = 0, cache1Miss = 0, cache2Miss = 0;

/*extern "C" void MLPCounter(uint32_t load_cnt, uint32_t inst_cnt){
		
//	cout<<"Blah"<<load_cnt;
	return;	
}*/

extern "C" void cacheCounter(unsigned id, const uint64_t addr, uint32_t type){

	do_cache(id,addr);
	return;

}

extern "C" void branchCounter(uint32_t branchInstID, uint32_t branchTargetID){
	
	static long br_mispredict_count = 0;
	bool flag = false;

	//std::cout<<" Branch Instruction\t"<<branchInstID<<"\n";
	//std::cout<<" Branch Instruction Target ID\t"<<branchTargetID<<"\n\n";
	
	//Simple Branch predictor
	
	branch_pred_it it  = bp.find(branchInstID);
	if( it == bp.end()){
		//Doesn't exist
		target_state_pair insertPair = make_pair(branchTargetID,1);
		bp.insert(std::pair<uint32_t, std::pair<uint32_t, uint32_t> >(branchInstID, insertPair));
	}	
	else{

		uint32_t curBrTargetID, curState, nxtBrTargetID, nxtState, nextBRTargetID;

		target_state_pair existingPair = it->second; 
		curBrTargetID = existingPair.first;
		curState = existingPair.second;

		//cout<<"current state:"<<curState;
			switch(curState) {	//State
			case 1: if (curBrTargetID == branchTargetID)
						nxtState = 1;
					else{ 
						nxtState = 2;
						update_br_mispredict(branchInstID);
						br_mispredict_count++; 
					}
					break;
			case 2: if(curBrTargetID == branchTargetID)
						nxtState = 1;
					else{
						nxtState = 3;
						br_mispredict_count++;
						update_br_mispredict(branchInstID);
						nxtBrTargetID = branchTargetID;
						flag = true;
					}
					break;
			case 3: if(curBrTargetID == branchTargetID)
						nxtState = 4;
					else{
						nxtState = 2;
						br_mispredict_count++;
						update_br_mispredict(branchInstID);
						nxtBrTargetID = branchTargetID;	
						flag = true;
					}
					break;
			case 4: if(curBrTargetID == branchTargetID)
						nxtState = 4;
					else{
						nxtState = 3;
						br_mispredict_count++;
						update_br_mispredict(branchInstID);
					}
					break;
			default: nxtState = 1; 
					 cout<<"Incorrect behavior in Branch Predictor";
		}

		if(flag)
			nextBRTargetID = nxtBrTargetID;
		else
			nextBRTargetID = curBrTargetID;

		//Next pair
		target_state_pair nxtPair = make_pair(nextBRTargetID, nxtState);

		//Update predictor
		it->second = nxtPair;	
	}

	cout<<"Total mispredicts:\t"<<br_mispredict_count<<"\n";
}

extern "C" void MLPCounter(uint32_t load_cnt, uint32_t inst_cnt, uint32_t succLoad_cnt1, uint32_t succInst_cnt1, uint32_t succLoad_cnt2, uint32_t succInst_cnt2){
		
	cout<<"Blah"<<load_cnt;
	return;	
}



void update_br_mispredict(uint32_t branchInstID){
	
	//Branch ID doesn't exist
	if(branch_mispr_map.find(branchInstID)==branch_mispr_map.end()){
			branch_mispr_map[branchInstID]=1;
	}				
	
	//Increment branch mispredict counter
	else
		branch_mispr_map[branchInstID]+=1;
	
}

void do_cache(uint32_t instID, uint32_t addr){

	EntryPair ep = make_pair(addr, instID);	
	if(mcache1Map.find(addr) == mcache1Map.end()){
			//Not found in L1. Look in L2
			cache1Miss++;
			update_L1miss_map(instID);
		
			if(mcache2Map.find(addr) == mcache2Map.end()){
				//Not found in L2 either

				insertInL1(instID, addr);
				insertInL2(instID, addr);

				cache2Miss++;
				update_L2miss_map(instID);
			}

			else{
				//Found in L2
				insertInL1(instID, addr);			
			}
	}

	else{
		cout<<"Entry found for "<<instID<<" "<<addr<<"\n";
		
		//Entry found. Refresh the list
		mcache1List.remove(ep);
		mcache1List.push_front(ep);
		mcache1Map[addr] = mcache1List.begin();	
	}
	
	cout<<"No. of misses : "<<cache1Miss<<"\n";

}


//Insert in L1 an entry that is not present in L2
void insertInL1(uint32_t instID, uint32_t addr){
	
			EntryPair ep = make_pair(addr, instID);	
			mcache1List.push_front(ep);
			mcache1Map[addr] = mcache1List.begin();
			mcache1Size++;
	
			if(isfullL1()){

				//Map overflow. Remove the last entry (LRU). L2 already has it
				mcache1Map.erase((mcache1List.back().first));
				mcache1List.pop_back();
				mcache1Size--;
			}
}

//Insert in L2
void insertInL2(uint32_t instID, uint32_t addr){
		
		uint32_t l1_addr, l1_instID;

		EntryPair ep = make_pair(addr, instID);
		mcache2List.push_front(ep);
		mcache2Map[addr] = mcache1List.begin();
		mcache2Size++;

		if(isfullL2()){
				
			//Map overflow. Remove the last entry from L2
			
			l1_addr = mcache2List.back().first;
 			l1_instID = mcache2List.back().second;
			EntryPair ep = make_pair(l1_addr, l1_instID);

			if(mcache1Map.find(l1_addr)!=mcache1Map.end()){
				//Remove entry from L1 too to maintain inclusivity
				mcache1Map.erase(l1_addr);
				mcache1List.remove(ep);
			}
		
			mcache2Map.erase((mcache2List.back().first));
			mcache2List.pop_back();
			mcache2Size--;
		}
		
}


bool isfullL1(){
	if(mcache1Size>Map1MaxSize)
	return true;

	else
	return false;
}

bool isfullL2(){
	if(mcache2Size>Map2MaxSize)
	return true;

	else
	return false;
}


void update_L1miss_map(uint32_t instID){
	std::map<uint32_t, uint32_t>::iterator map_it;
	map_it = L1miss_map.find(instID);
	
	if(map_it==L1miss_map.end()){
		//Insert a new entry with count = 1
		L1miss_map.insert(std::pair<uint32_t, uint32_t>(instID, 1));
	}
	
	else{
		//Entry found. Increment count by 1
		map_it->second +=1;
		cout<<"Incremented to "<<map_it->second<<" for"<<instID<<"\n";
	}

}

void update_L2miss_map(uint32_t instID){
	
	std::map<uint32_t, uint32_t>::iterator map_it;
	map_it = L2miss_map.find(instID);
	
	if(map_it==L2miss_map.end()){
		//Insert a new entry with count = 1
		L2miss_map.insert(std::pair<uint32_t, uint32_t>(instID, 1));
	}
	
	else{
		//Entry found. Increment count by 1
		map_it->second +=1;
		cout<<"Incremented to "<<map_it->second<<" for"<<instID<<"\n";
	}

}



