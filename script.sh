#!/bin/bash

for opt in 0 1 2; do
    echo "-O$opt optimization level..."
    icc -std=c++17 -O$opt program.cpp -o program_$opt
    time ./program_$opt
    ./program_$opt 
done

for i in sse2 sse3 sse4.1 sse4.2 avx ATOM_SSE4.2 ATOM_SSSE3 SANDYBRIDGE SILVERMONT; do
    
    echo "-x$i"
    icc -x$i -std=c++17 program.cpp -o program_$i
    time ./program_$i
    ./program_$i
done


