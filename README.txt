CORDIC: Coordinate Rotation Digital Computer
SENG 440 (A01): Embdedded Systems
Summer 2022

Spencer Davis, V00759537
Sean McAuliffe, V00913346


---------------------------- BACKGROUND ----------------------------

This repository contains an implementation of the CORDIC algorithm
using fixed point arithmetic. Both vectoring and rotation modes
have been imlpemented.

Vectoring Mode:

Vectoring mode recieves two 32-bit signed integers as input parameters.
These parameters represent x = cos(theta), y = sin(theta), forming a point-
coordinate pair. This point represents a vector from the origin to 
that point. The CORDIC-rotation algorithm then produces the arctan of
(y/z), returning the angle that the input vector forms with the x-axis.
The angle is encoded as a 32-bit signed integer, with a scale factor of 2^19.

The valid range is x >= 0. Magnitude of <x,y> scaled by a factor of 2^19
should be representable in 31-bits.

Rotation Mode:

Rotation mode receives a signle 32-bit signed integer input. This input represents
an initial angle z, measured from the x-axis. Rotation mode then produces two
32-bit signed outputs, x and y, which represent cos(z) and sin(z) respectively.

The valid range of input angles is -(pi/2) to (pi/2).

In both modes, the output produced is 20-bits, stored in a 32-bit integer. Bits
4-20 are accurate. To print out the result to the customer, bits 4-20 should be
cast into a 16-bit integer, and then a scale factor of 2^15 should be divided out.
The resulting floating-point representation is accurate to 4 decimal places.


---------------------------- BUILD PROCESS ----------------------------

A shell script `compile.sh` which automates the compilation process has
been provided. There are two modes of operation.

The build process was tested on the SENG440 lab machine (seng44.ece.uvic.ca),
and makes use of  the following executables provided by that environment:

    - /usr/bin/gcc
    - /opt/bin/arm-linux-gcc

Versions:

    - gcc (GCC) 4.8.5 20150623 (Red Hat 4.8.5-44)
    - arm-none-linux-gnueabi-gcc (Sourcery G++ Lite 2008q3-72) 4.3.2

To compile the testbench for your local machine (using whatever the target 
of `gcc` is on your local machine), run:

$ ./compile.sh g

To compile the testbench to be run on an ARM32 machine, using cross-compilation
via the arm-linux-gcc compiler, run:

$ ./compile a

The script will automatically generate 4 executables for the target machine:

    - timer-O0
    - timer-O1
    - timer-O2
    - timer-O3

Each of these represent the full testbench functionality. The difference
is which compiler optimization flag was used to compile the CORDIC module.
In each case, no optimiation flag was used during the compilation of the
testbench itself, or any reference functions. The flag was applied only
to the compilation of CORDIC.


---------------------------- RUNNING THE TESTBENCH ----------------------------

The `timer-O*` executable expects to receive command line arguments, specifying
which verion(s) of the CORDIC algorithm should be timed. You may specify as many
of the following options as you wish.

The options are:

#---------------------#
| Reference mode (-r) |
#---------------------#

This mode runs the atan(), cos(), and sin() functions from the C-math library. The
performance of these functions serves as a calibration or reference point, against
which to judge the performance of subsequent CORDIC implementations.

The following options each refer to a different implementation of the same CORDIC
fixed-point algorithm. Each subsequent implementation is an attempt to further
optimization the performance of the algorithm, while maintaining correctness to 16-
bits of accuracy.

To perform this test, run:

$ ./test-OX -r

Replacing X with one of {0, 1, 2, 3}

#-------------------#
| Naive CORDIC (-n) |
#-------------------#

This represents the first attempt at implementing the CORDIC algorithm. It does
not consciously apply any software optimiaztions. 

To perform this test, run:

$ ./test-OX -n

Replacing X with one of {0, 1, 2, 3}

#----------------------#
| Optimization 1 (-o1) |
#----------------------#

This implementation represents our first attempt to optimization the performance
of CORDIC. It implements: register keyword, restrict keyword, common subexpression
elimination, elimination of unnecessary return parameters.

To perform this test, run:

$ ./test-OX -o1

Replacing X with one of {0, 1, 2, 3}

#----------------------#
| Optimization 2 (-o2) |
#----------------------#

This implementation further applies the following software optimization techniques:
loop unrolling to avoid jumps, elimination inner if-statement to remove conditional
assembly instructions, using XOR and arithmetic operations to avoid condtional
branching.

To perform this test, run:

$ ./test-OX -o2

Replacing X with one of {0, 1, 2, 3}

#----------------------#
| Optimization 3 (-o3) |
#----------------------#

This implementation further applies the following optimization technique: replacing
external reference to the z_table with internal immediate values.\

To perform this test, run:

$ ./test-OX -o3

Replacing X with one of {0, 1, 2, 3}

#------------------------#
| Optimization 3b (-o3b) |
#------------------------#

This implementation reverts an earlier optimization which we found to be a mistake during
assembly inpsection and manual runtime testing. This implementation encourages the
use of compare and predicate operations in the assembly, rather than replaces them with
pure arithmetic instructions, by replacing the XOR with an if-else.

To perform this test, run:

$ ./test-OX -o3b

Replacing X with one of {0, 1, 2, 3}

#-----------------------#
| NEON Firmware  (-f) |
#-----------------------#

Lastly, we implemented a vectorized version of the CORDIC fixed-point algorithm using NEON
intrinsics. We verified the correctness of our implementation by running it on a Cortex-A72
ARMv8 64-bit processor on a Raspberry Pi. The testbench supports running this NEON implementation,
however, it will NOT be compiled if you use the `g` argument to the compile script.

And, of course, it will only run if the ARM machine you have compiled for supports the use
of NEON instrinsics. Attempting to run this version on the provided ARM920T machine 
produces an `Illegal Instruction` error.

You may run all generations at once, for simplicity:

$ ./test-O0 -r -n -o1 -o2 -o3 -o3b -f


---------------------------- TESTBENCH INPUTS ------------------------------

These inputs are configurable in the `constants.h` file, so you may test our
implementation easily on a variety of inputs.

                /* -------------------   Inputs   --------------------
                * Edit these values here, and then recompile, to
                * test the  CORDIC implementation on different inputs.
                * ------------------------------------------------- */
                static const double X_VECTORING_MODE = 0.707106;
                static const double Y_VECTORING_MODE = 0.707106;
                static const double Z_ROTATION_MODE = 0.785398;


---------------------------- TESTBENCH OUTPUTs ----------------------------

Example output from the testbench executable is available in the following .txt
files:

    - o0.txt
    - o1.txt
    - o2.txt
    - o3.txt

These files capture the results we witnessed testing the performance of our NEON
CORDIC-vectoring implementation on a CORTEX-A72 machine. Performance measurements of
software optimizations are provided in our final report.

The program first prints the inputs it has received:

                Program Inputs
                Real Z:            0.785398
                Real Y:            0.707106
                Real X:            0.707106
                Integer Z:         411774
                Integer Y:         370727
                Integer X:         370727
                Binary Z:          00000000000001100100100001111110
                Binary Y:          00000000000001011010100000100111
                Binary X:          00000000000001011010100000100111

Then, each generation which has been selected from (-r -n -o1 -o2 -o3 -o3b -f) will run.
The average number of ticks (in proecssor time as reported by time.h clock() function) 
is printed, followed by a floating-point and binary representation of the outputs.

For example:

                Opt-1 CORDIC-Vectoring
                Average ticks:     180
                z = vector(y/z):   0.785389
                x = vector(y/z):   1.000001
                binary(z):         00000000000001100100100001111010
                binary(x):         00000000000011010010110010010011

Vectoring mode is supposed to return z and x (we do not care about y, it will always be ~0). 
The floating-point (customer) representation is provided for quick verification of correctness,
and binary is shown (typically 20 significant bits) to verify that bits 4-20 are accurate. In a 
real application, the output from CORDIC should then be cast into a 16-bit integer, disregarding
the least significant four bits of our output.













