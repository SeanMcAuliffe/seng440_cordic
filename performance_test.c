/*
* This program is meant to be compiled with all of the versions
* of CORDIC we produce (from naive, to optimized C, to firmware instrinsics).
* Provide command line arguments to specify which versions of cordic to test.
* -r = atan reference
* -n = naive
* -o1 = optimized version 1
* -o2 = optimized version 2
* -o3 = optimized version 3
* -f = firmware intrinsics
* Compile using the command: gcc -o performance_test performenace_test.c -lm
*/

#include <time.h>
#include "cordic_naive.c"
#include "string.h"
#include "atan_reference.c"

#define NUM_ITERATIONS 10000
#define NUM_TRIALS 1000

int main(int argc, char* argv[]) {

    double x_d = 0.707106;
    double y_d = 0.707106;
    double z_d;

    int x_i = 5931642;
    int y_i = 5931642;
    int z_i;

    clock_t timebench_begin;
    clock_t timebench_end;

    clock_t cordic_begin;
    clock_t cordic_end;

    for (int i = 1; i < argc; i++) {

        if (strcmp(argv[i], "-r") == 0) {
            printf("Running Atan Reference\n");
            timebench_begin = clock();
            for (int k = 0; k < NUM_TRIALS; k++) {
                for (int j = 0; j < NUM_ITERATIONS; j++) {
                    atan_reference(x_d, y_d, &z_d); //z_d = atan(y_d / x_d);//
                }
            }
            timebench_end = clock();
            int time_testbench = (timebench_end - timebench_begin) / 1000;
            printf("Atan took %d, z_d = %f\n\n", time_testbench, z_d);
        }

        if (strcmp(argv[i], "-n") == 0) {
            printf("Running Cordic Naive\n");
            cordic_begin = clock();
            for (int k =0; k < 1000; k++) {
                for (int j = 0; j < 10000; j++) {
                    cordic_naive(&x_i, &y_i, &z_i);
                }
            }
            cordic_end = clock();
            int time_cordic = (cordic_end - cordic_begin) / 1000;
            printf("Cordic naive took %d, z_i = %i\n\n", time_cordic, z_i);
        }

        if (strcmp(argv[i], "-o1") == 0) {
            printf("Running Optimized 1\n");
        }

        if (strcmp(argv[i], "-o2") == 0) {
            printf("6\n");
            printf("Running Optimized 2\n");
        }

        if (strcmp(argv[i], "-o3") == 0) {
            printf("Running Optimized 3\n");
        }

        if (strcmp(argv[i], "-f") == 0) {
            printf("Running Firmware\n");
        }
    }

    return 0;
}
