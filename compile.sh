#!/bin/bash

# This script automatically compiles all versions of the cordic
# implementation into ARM binaries, using all possible compiler
# optimization flags.

DEFINES=("-D REFERENCE" "-D O1" "-D NAIVE" "-D O2" "-D O3" "-D O3b" "-D NEON")
MODULES=("naive_cordic.c" "opt1_cordic.c" "opt2_cordic.c" "opt3_cordic.c" "opt3b_cordic.c" "neon_cordic.c")
OBJECTS=("naive_cordic.o" "opt1_cordic.o" "opt2_cordic.o" "opt3_cordic.o" "opt3b_cordic.o" "neon_cordic.o")
OPT_FLAG=("-O0" "-O1" "-O2" "-O3")
CC=""
FLAGS=""
EXEC="timer"

if [ "$1" == "g" ]; then
    CC="gcc"
fi

if [ "$1" == "a" ]; then
    CC="/opt/arm/4.3.2/bin/arm-linux-gcc"
fi

# IF CC == GCC
if [ "$CC" == "gcc" ]; then
    FLAGS="-Wall -lm"
fi

if [ "$CC" == "/opt/arm/4.3.2/bin/arm-linux-gcc" ]; then
    FLAGS="-Wall -mfloat-abi=softfp -mfpu=neon -static -march=armv4t -mtune=arm920t"
fi

for opt in ${OPT_FLAG[@]}; do
    EXEC="timer"${opt}

    # Compile each module
    for module in ${MODULES[@]}; do
        ${CC} ${FLAGS[@]} -c -std=c99 ${module} ${opt}
        ${CC} ${FLAGS[@]} -S -std=c99 ${module} ${opt}
        filename=${module}
        modified=${filename::-2}
        mv ${modified}.s ./temp_asm/${modified}${opt}.asm
    done

    # Compile math reference
    ${CC} ${DEFINES[@]} -c -std=c99 math_reference.c

    # Compile utilities
    ${CC} ${DEFINES[@]} -c -std=c99 utilities.c

    # Compile performance test
    ${CC} ${DEFINES[@]} -c -std=c99 performance_test.c

    # Link all objects
    ${CC} -o ${EXEC} ${OBJECTS[@]} -std=c99 performance_test.o math_reference.o utilities.o ${FLAGS[@]} -lm
done

# arm-linux-gcc -c -std=c99 cordic_naive.c -O1
# arm-linux-gcc -c -std=c99 -lm performance_test.c
# arm-linux-gcc -std=c99 -static -mfloat-abi=soft performance_test.o cordic_naive.o -o performance_test -lm
