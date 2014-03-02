#!/bin/sh

cd source
CFLAGS='-D_GNU_SOURCE -D_XOPEN_SOURCE=600 -c -Wall -pedantic -Wno-long-long -g -O0 -I/net/tawas/v/silkyar/llvm/include -I/home/silkyar/Workspace/Benchmarks/benchspec/CPU2006/403.gcc/src'


clang -emit-llvm -c gcc_sample/concat.c -I/home/silkyar/Workspace/Benchmarks/benchspec/CPU2006/403.gcc/src  -o concat.bc
clang -emit-llvm -c gcc_sample/xexit.c  -I/home/silkyar/Workspace/Benchmarks/benchspec/CPU2006/403.gcc/src -o xexit.bc
clang -emit-llvm -c gcc_sample/xmalloc.c -I/home/silkyar/Workspace/Benchmarks/benchspec/CPU2006/403.gcc/src -o xmalloc.bc
opt -mergereturn concat.bc -o concat.m.bc
opt -mergereturn xexit.bc -o xexit.m.bc
opt -mergereturn xmalloc.bc -o xmalloc.m.bc
llvm-link concat.m.bc xexit.m.bc xmalloc.m.bc -o test_code.bc

# Run original code
llc test_code.bc -o test_code.s
g++ -g -o  test_code test_code.s
./test_code

#objdump -DS test_code

# Run instrumented code
clang $CFLAGS -o het_profiler.o cacheSim.cpp -DDEBUG
opt -load /home/silkyar/Workspace/LLVM/llvm/Release+Asserts/lib/cacheProf.so -cacheProf test_code.bc > out.bc
llc out.bc -o out.s
g++ -o hetprof out.s het_profiler.o
./hetprof

