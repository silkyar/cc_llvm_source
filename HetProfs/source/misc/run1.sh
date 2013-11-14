#!/bin/sh
cd source
clang -O0 -emit-llvm -c a.c -o a.bc
clang++  -O0 -g -emit-llvm -I/x/ext_students/silkyar/llvm/include -c cacheSim.cpp -o cacheSim.bc `llvm-config --cxxflags` 
llvm-link a.bc cacheSim.bc -o final.bc
opt -load /x/ext_students/silkyar/llvm/Debug+Asserts/lib/cacheProf.so -cacheProf final.bc>out.bc
llc out.bc -o out.s
g++ out.s 
./a.out





#gdb --args lli -jit-emit-debug  out.bc
#clang -emit-llvm -c cacheSim.c -o cacheSim.bc #`llvm-config --cxxflags` 
