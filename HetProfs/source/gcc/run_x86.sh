# Compile the external cpp file (.bc format)
clang++ -emit-llvm -static -pedantic -Wall -Wextra -Wenum-conversion -fno-strict-aliasing -g -c ../2way.cpp -o cacheSim.bc

echo "Compiled with clang"

# Get assembly (.s format)
llc  cacheSim.bc -o cacheSim.s

echo "Got assembly"

# Optimize the application bc file with the profiler
clang++ -emit-llvm -static -g -c hello.cpp -o hello.bc
opt -load /home/silkyar/Workspace/LLVM/llvm/Release+Asserts/lib/cacheProf.so -cacheProf test_code_x86.bc > out.bc

echo "Code instrumented"

#out.s will now be the test application optimized with the profiler
llc out.bc -o out.s

echo "Got the assembly for the instrumented code"

# Get the final executable
g++ -static  -g cacheSim.s out.s -o cacheSim

echo "Finished" 

