#!/bin/bash

# This script automatically compiles all versions of the cordic
# implementation into ARM binaries, using all possible compiler
# optimization flags.

DEFINES=("-D REFERENCE" "-D O1" "-D NAIVE")
MODULES=("cordic_naive.c" "cordic_opt1.c" "cordic_opt2.c")
OBJECTS=("cordic_naive.o" "cordic_opt1.o")
OPT_FLAG=("-O0" "-O1" "-O2" "-O3")
CC=""
FLAGS=""
EXEC="timer"

if [ "$1" == "g" ]; then
    CC="gcc"
fi

if [ "$1" == "a" ]; then
    CC="arm-linux-gcc"
fi

# IF CC == GCC
if [ "$CC" == "gcc" ]; then
    FLAGS="-Wall -lm"
fi

for opt in ${OPT_FLAG[@]}; do
    EXEC="timer"${opt}
    # If CC == arm-linux-gcc
    if [ "$CC" == "arm-linux-gcc" ]; then
        FLAGS="-Wall -mfloat-abi=soft -lm -march=armv4t -mtune=arm920t -static"
    fi

    # Compile each module
    for module in ${MODULES[@]}; do
        ${CC} -c -std=c99 ${module} ${opt}
        ${CC} -S -std=c99 ${module} ${opt}
        filename=${module}
        modified=${filename::-2}
        mv ${modified}.s ./temp_asm/${modified}${opt}.asm
    done

    # Compile performance test
    ${CC} ${DEFINES[@]} -c -std=c99 performance_test.c

    # Link all objects
    ${CC} -o ${EXEC} ${OBJECTS[@]} -std=c99 performance_test.o ${FLAGS[@]}
done

# arm-linux-gcc -c -std=c99 cordic_naive.c -O1
# arm-linux-gcc -c -std=c99 -lm performance_test.c
# arm-linux-gcc -std=c99 -static -mfloat-abi=soft performance_test.o cordic_naive.o -o performance_test -lm
