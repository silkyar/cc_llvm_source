#!/bin/sh

cd source
CFLAGS='-D_GNU_SOURCE -D_XOPEN_SOURCE=600 -c -Wall -pedantic -Wno-long-long -g -O0 -I/net/tawas/v/silkyar/llvm/include -I/net/tawas/v/silkyar/llvm/Benchmarks/benchspec/CPU2006/403.gcc/src'

clang -emit-llvm -c /net/tawas/v/silkyar/llvm/lib/Transforms/HetProfs/test_code.c -o test_code.bc

# Run original code
llc test_code.bc -o test_code.s
g++ -o test_code test_code.s
./test_code

# Edge profiling
opt -insert-edge-profiling test_code.bc -o test_code.profile.bc
llc test_code.profile.bc -o test_code.profile.s

# Run instrumented code
clang $CFLAGS -o het_profiler.o cacheSim.cpp
opt -load /net/tawas/v/silkyar/llvm/Debug+Asserts/lib/cacheProf.so -cacheProf test_code.bc > out.bc
llc out.bc -o out.s
g++ -o hetprof out.s het_profiler.o
./hetprof

