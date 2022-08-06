#!/bin/bash

DEFINES=("-D REFERENCE" "-D O1" "-D NAIVE")
MODULES=("cordic_naive.c" "cordic_opt1.c")
OBJECTS=("cordic_naive.o" "cordic_opt1.o")
OPT_FLAG="-O1"
#CC="arm-linux-gcc"
CC="gcc"
FLAGS=""

# IF CC == GCC
if [ "$CC" == "gcc" ]; then
    FLAGS="-Wall -lm"
fi

# If CC == arm-linux-gcc
if [ "$CC" == "arm-linux-gcc" ]; then
    FLAGS="-Wall -mfloat-abi=soft -lm -march=armv4t -mtune=arm920t -static"
fi

# Compile each module
for module in ${MODULES[@]}; do
    echo "Compiling $module.c"
    ${CC} -c -std=c99 ${module} ${OPT_FLAG}
done

# Compile performance test
${CC} ${DEFINES[@]} -c -std=c99 performance_test.c

# Link all objects
${CC} -o timer ${MODULES[@]} -std=c99 performance_test.o ${FLAGS[@]}

# arm-linux-gcc -c -std=c99 cordic_naive.c -O1
# arm-linux-gcc -c -std=c99 -lm performance_test.c
# arm-linux-gcc -std=c99 -static -mfloat-abi=soft performance_test.o cordic_naive.o -o performance_test -lm
