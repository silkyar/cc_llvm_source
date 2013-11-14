# Compile the external cpp file (.bc format)
clang++ -emit-llvm -static -target arm-none--linux-gnueabi -march=armeabi-v7a -I /home/silkyar/Workspace/CrossCompiler/arm-2011.03/arm-none-linux-gnueabi/libc/usr/include -I /home/silkyar/Workspace/CrossCompiler/arm-2011.03/arm-none-linux-gnueabi/include/c++/4.5.2/ -I /home/silkyar/Workspace/CrossCompiler/arm-2011.03/arm-none-linux-gnueabi/include/c++/4.5.2/arm-none-linux-gnueabi/ -c ../cacheSim.cpp -o cacheSim.bc

# Get assembly (.s format)
llc  cacheSim.bc -o cacheSim.s

# Optimize the application bc file with the profiler
opt -load /home/silkyar/Workspace/LLVM/llvm/Release+Asserts/lib/cacheProf.so -cacheProf test_code.bc > out.bc

#out.s will now be the test application optimized with the profiler
llc out.bc -o out.s

# Get the final executable
arm-none-linux-gnueabi-g++ -static  cacheSim.s out.s -o cacheSim
 

