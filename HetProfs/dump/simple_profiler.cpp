#include "llvm/Pass.h"
#include "llvm/Function.h"
#include "llvm/ADT/Statistic.h"
#include "llvm/Instruction.h"
#include "llvm/Support/raw_ostream.h"
#include "llvm/Support/CFG.h"
#include "llvm/Analysis/Passes.h"
using namespace llvm;
using namespace std;

namespace {
    struct simple_profiler : public FunctionPass {
      static char ID;

      IProfiler() : FunctionPass(ID) {
         // Empty
       }
       
		public: 
		virtual bool  runOnFunction(Function &F) {
			for(Function::iterator BB = F.begin(); BB != F.end(); BB++) {
				cout<<BB;
			}
		}
	}
}
