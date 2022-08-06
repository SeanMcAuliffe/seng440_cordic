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
#include <string.h>
#include <stdint.h>
#include "cordic_naive.c"
#include "atan_reference.c"
#include "von_neumann.c"
#include <math.h>
#include "constants.h"

void binary_print(int32_t x) {
    for (int i = 31; i >= 0; i--) {
        printf("%d", (x >> i) & 1);
    }
    printf("\n");
}

int main(int argc, char* argv[]) {

    /* CORDIC Real Inputs for Vectoring and Rotation Modes */
    double x_d = X_VECTORING_MODE;
    double y_d = Y_VECTORING_MODE;
    double z_d_rot = Z_ROTATION_MODE;
    double z_d, xd_o, yd_o, zd_o;

    /* Apply scale factor */
    int32_t x_i = (int32_t)(x_d * SCALE_FACTOR);
    int32_t y_i = (int32_t)(y_d * SCALE_FACTOR);
    int32_t z_i = (int32_t)(z_d_rot * SCALE_FACTOR);
    int32_t x_o, y_o, z_o;

    /* Timing Variables */
    clock_t time_start, time_end;

    /* Run all modes which have been specified */
    for (int i = 1; i < argc; i++) {

        /* Use floating point emulation for reference */
        if (strcmp(argv[i], "-r") == 0) {
            printf("Running Atan Reference\n");
            time_start = clock();
            for (int k = 0; k < NUM_TRIALS; k++) {
                for (int j = 0; j < NUM_ITERATIONS; j++) {
                    atan_reference(x_d, y_d, &z_d); //z_d = atan(y_d / x_d);//
                }
            }
            time_end = clock();
            int time_testbench = (time_end - time_start) / NUM_TRIALS;
            printf("Atan took %d cycles, z_d = %f\n\n", time_testbench, z_d);
        }

        /* Naive Fixed Point Implementation */
        if (strcmp(argv[i], "-n") == 0) {

            /* Run naive vectoring mode */
            printf("Running Cordic Naive Vectoring\n");
            time_start = clock();
            for (int k =0; k < NUM_TRIALS; k++) {
                for (int j = 0; j < NUM_ITERATIONS; j++) {
                    cordic_naive_vectoring(x_i, y_i, &x_o, &y_o, &z_o);
                }
            }
            time_end = clock();
            int time_cordic = (time_end - time_start) / NUM_TRIALS;
            printf("Cordic naive vectoring took %d cycles, z_i = %i\n\n", time_cordic, z_i);

            /* Verify naive vectoring mode */
            zd_o = (double) z_o / SCALE_FACTOR;
            yd_o = (double) y_o / SCALE_FACTOR;
            xd_o = (double) x_o / SCALE_FACTOR;
            printf("z_d = %f\n", z_d);
            printf("zd_o = %f\n", zd_o);
            printf("yd_o = %f\n", yd_o);
            printf("xd_o = %f\n", xd_o * ((double) K_SCALE / (double) SCALE_FACTOR));

            /* Run naive rotation mode */
            printf("\nRunning Cordic Naive Rotation\n");
            time_start = clock();
            for (int k =0; k < NUM_TRIALS; k++) {
                for (int j = 0; j < NUM_ITERATIONS; j++) {
                    cordic_naive_rotation(z_i, &x_o, &y_o, &z_o);
                }
            }
            time_end = clock();
            time_cordic = (time_end - time_start) / NUM_TRIALS;
            printf("Cordic naive rotation took %d cycles , z_i = %i\n", time_cordic, z_i);

            /* Verify naive rotation mode */
            zd_o = (double) z_o / SCALE_FACTOR;
            yd_o = (double) y_o / SCALE_FACTOR;
            xd_o = (double) x_o / SCALE_FACTOR;
            printf("\nReference:\n");
            double cos_z = cos(Z_ROTATION_MODE);
            double sin_z = sin(Z_ROTATION_MODE);
            printf("x = %f\ny = %f\n", cos_z , sin_z);
            printf("\nRotation mode output:\n");
            printf("zd_o = %f\n", zd_o);
            printf("xd_o = %f\n", xd_o);
            printf("yd_o = %f\n", yd_o);
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
