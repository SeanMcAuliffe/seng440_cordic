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
//#include "cordic_naive.c"
#include "math_reference.c"
#include "von_neumann.c"
#include <math.h>
#include "constants.h"

/* For debugging purposes, print the
* binary representation of a number */
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

    /* Seperate output locations */
    double z_d, xd_o, yd_o, zd_o;

    /* Apply scale factor */
    int32_t x_i = (int32_t)(x_d * SCALE_FACTOR);
    int32_t y_i = (int32_t)(y_d * SCALE_FACTOR);
    int32_t z_i = (int32_t)(z_d_rot * SCALE_FACTOR);

    /* Output locations kept seperate from inputs,
    * to avoid overwriting inputs during consecutive
    * iterations */
    int32_t x_o, y_o, z_o;

    /* Timing Variables */
    clock_t time_start, time_end;
    int time_elapsed;

    /* Run all modes which have been specified */
    for (int i = 1; i < argc; i++) {

        /* Use floating point emulation for reference */
        if (strcmp(argv[i], "-r") == 0) {

            /* START ATAN REFERNCE */
            printf("Running Atan Reference\n");
            time_start = clock();
            for (int k = 0; k < NUM_TRIALS; k++) {
                for (int j = 0; j < NUM_ITERATIONS; j++) {
                    // z_d = atan(y_d / x_d);
                    atan_reference(x_d, y_d, &zd_o); 
                }
            }
            time_end = clock();
            time_elapsed = (int) ((double) (time_end - time_start) / (double) NUM_TRIALS);
            printf("Atan took %d ticks on average.\n z_d = %f\n\n", time_elapsed, zd_o);
            printf("Atan z = "); binary_print(z_i);
            /* END ATAN REFERNCE */

            /* START SINCOS REFERNCE */
            printf("Running Sin, Cos References\n");
            time_start = clock();
            for (int k = 0; k < NUM_TRIALS; k++) {
                for (int j = 0; j < NUM_ITERATIONS; j++) {
                    //x_d = cos(z_d); y_d = sin(z_d);
                    sincos_reference(z_d_rot, &xd_o, &yd_o); 
                }
            }
            time_end = clock();
            time_elapsed = (int) ((double) (time_end - time_start) / (double) NUM_TRIALS);
            printf("Cos and Sin took %d ticks on average.\n x = %f, y= %f\n\n", time_elapsed, xd_o, yd_o);
            printf("cos x = "); binary_print((int32_t) (xd_o * SCALE_FACTOR));
            printf("sin x = "); binary_print((int32_t) (yd_o * SCALE_FACTOR));
            /* END SINCOS REFERNCE */ 

        }

        /* Naive Fixed Point Implementation */
        if (strcmp(argv[i], "-n") == 0) {

            /* START VECTORING */
            printf("Running Cordic Naive Vectoring\n");
            time_start = clock();
            for (int k =0; k < NUM_TRIALS; k++) {
                for (int j = 0; j < NUM_ITERATIONS; j++) {
                    cordic_naive_vectoring(x_i, y_i, &x_o, &y_o, &z_o);
                }
            }
            time_end = clock();
            time_elapsed = (int) ((double) (time_end - time_start) / (double) NUM_TRIALS);
            printf("Cordic naive vectoring took %d ticks on average.\n z_i = %i\n\n", time_elapsed, z_i);

            /* Verify Results */
            printf("cordic z = "); binary_print(z_o);
            zd_o = (double) z_o / SCALE_FACTOR;
            yd_o = (double) y_o / SCALE_FACTOR;
            xd_o = (double) x_o / SCALE_FACTOR;
            printf("z_d = %f\n", z_d);
            printf("zd_o = %f\n", zd_o);
            printf("yd_o = %f\n", yd_o);
            printf("xd_o = %f\n", xd_o * ((double) K_SCALE / (double) SCALE_FACTOR));
             /* END VECTORING */

             /* START ROTATION */
            printf("\nRunning Cordic Naive Rotation\n");
            time_start = clock();
            for (int k =0; k < NUM_TRIALS; k++) {
                for (int j = 0; j < NUM_ITERATIONS; j++) {
                    cordic_naive_rotation(z_i, &x_o, &y_o, &z_o);
                }
            }
            time_end = clock();
            time_elapsed = (int) ((double) (time_end - time_start) / (double) NUM_TRIALS);
            printf("Cordic naive rotation took %d ticks on average.\n z_i = %i\n", time_elapsed, z_i);

            /* Verify naive rotation mode */
            printf("cordic x = "); binary_print(x_o);
            printf("cordic y = "); binary_print(y_o);
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
             /* END ROTATION */
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
