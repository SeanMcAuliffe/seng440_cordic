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
#include "cordic_opt1.c"
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

    printf("\nProgram Inputs\n");
    printf("Real Z:            %f\n", z_d_rot);
    printf("Real Y:            %f\n", y_d);
    printf("Real X:            %f\n", x_d);
    printf("Integer Z:         %d\n", z_i);
    printf("Integer Y:         %d\n", y_i);
    printf("Integer X:         %d\n", x_i);
    printf("Binary Z:          "); binary_print(z_i);
    printf("Binary Y:          "); binary_print(y_i);
    printf("Binary X:          "); binary_print(x_i); printf("\n");


    /* Timing Variables */
    clock_t time_start, time_end;
    int time_elapsed;

    /* Run all modes which have been specified */
    for (int i = 1; i < argc; i++) {

        /* Use floating point emulation for reference */
        if (strcmp(argv[i], "-r") == 0) {

            /* START ATAN REFERNCE */
            printf("Atan Reference\n");
            time_start = clock();
            for (int k = 0; k < NUM_TRIALS; k++) {
                for (int j = 0; j < NUM_ITERATIONS; j++) {
                    // z_d = atan(y_d / x_d);
                    atan_reference(x_d, y_d, &zd_o); 
                }
            }
            time_end = clock();
            time_elapsed = (int) ((double) (time_end - time_start) / (double) NUM_TRIALS);
            printf("Average ticks:     %d\n", time_elapsed);
            printf("z = arctan(y/z):   %f\n", zd_o);
            printf("binary(z):         "); binary_print(z_i); printf("\n");
            /* END ATAN REFERNCE */

            /* START SINCOS REFERNCE */
            printf("Sin/Cos Reference\n");
            time_start = clock();
            for (int k = 0; k < NUM_TRIALS; k++) {
                for (int j = 0; j < NUM_ITERATIONS; j++) {
                    //x_d = cos(z_d); y_d = sin(z_d);
                    sincos_reference(z_d_rot, &xd_o, &yd_o); 
                }
            }
            time_end = clock();
            time_elapsed = (int) ((double) (time_end - time_start) / (double) NUM_TRIALS);
            printf("Average ticks:     %d\n", time_elapsed);
            printf("y = sin(z):        %f\n", yd_o);
            printf("x = cos(z):        %f\n", xd_o);
            printf("binary(x):         "); binary_print((int32_t) (xd_o * SCALE_FACTOR));
            printf("binary(y):         "); binary_print((int32_t) (yd_o * SCALE_FACTOR)); printf("\n");
            /* END SINCOS REFERNCE */ 

        }

        /* Naive Fixed Point Implementation */
        if (strcmp(argv[i], "-n") == 0) {

            /* START VECTORING */
            printf("Naive CORDIC-Vectoring\n");
            time_start = clock();
            for (int k =0; k < NUM_TRIALS; k++) {
                for (int j = 0; j < NUM_ITERATIONS; j++) {
                    cordic_naive_vectoring(x_i, y_i, &x_o, &y_o, &z_o);
                }
            }
            time_end = clock();
            time_elapsed = (int) ((double) (time_end - time_start) / (double) NUM_TRIALS);
            zd_o = (double) z_o / SCALE_FACTOR;
            yd_o = (double) y_o / SCALE_FACTOR;
            xd_o = (double) x_o / SCALE_FACTOR;
            printf("Average ticks:     %d\n", time_elapsed);
            printf("z = vector(y/z):   %f\n", zd_o);
            printf("x = vector(y/z):   %f\n", xd_o * ((double) K_SCALE / (double) SCALE_FACTOR));
            printf("y = vector(y/z):   %f\n", yd_o);
            printf("binary(z):         "); binary_print(z_o);
            printf("binary(x):         "); binary_print(x_o);
            printf("binary(y):         "); binary_print(y_o); printf("\n");
             /* END VECTORING */

             /* START ROTATION */
            printf("Naive CORDIC-Rotation\n");
            time_start = clock();
            for (int k = 0; k < NUM_TRIALS; k++) {
                for (int j = 0; j < NUM_ITERATIONS; j++) {
                    cordic_naive_rotation(z_i, &x_o, &y_o, &z_o);
                }
            }
            time_end = clock();
            time_elapsed = (int) ((double) (time_end - time_start) / (double) NUM_TRIALS);
            zd_o = (double) z_o / SCALE_FACTOR;
            yd_o = (double) y_o / SCALE_FACTOR;
            xd_o = (double) x_o / SCALE_FACTOR;
            printf("Average ticks:     %d\n", time_elapsed);
            printf("z = rotate(z):     %f\n", zd_o);
            printf("x = rotate(z):     %f\n", xd_o);
            printf("y = rotate(z):     %f\n", yd_o);
            printf("binary(z):         "); binary_print(z_o);
            printf("binary(x):         "); binary_print(x_o);
            printf("binary(y):         "); binary_print(y_o); printf("\n");
            /* END ROTATION */
        }

        if (strcmp(argv[i], "-o1") == 0) {
             /* START VECTORING */
            printf("Opt-1 CORDIC-Vectoring\n");
            time_start = clock();
            for (int k = 0; k < NUM_TRIALS; k++) {
                for (int j = 0; j < NUM_ITERATIONS; j++) {
                    cordic_opt1_vectoring(x_i, y_i, &x_o, &z_o);
                }
            }
            time_end = clock();
            time_elapsed = (int) ((double) (time_end - time_start) / (double) NUM_TRIALS);
            zd_o = (double) z_o / SCALE_FACTOR;
            yd_o = (double) y_o / SCALE_FACTOR;
            xd_o = (double) x_o / SCALE_FACTOR;
            printf("Average ticks:     %d\n", time_elapsed);
            printf("z = vector(y/z):   %f\n", zd_o);
            printf("x = vector(y/z):   %f\n", xd_o * ((double) K_SCALE / (double) SCALE_FACTOR));
            printf("binary(z):         "); binary_print(z_o);
            printf("binary(x):         "); binary_print(x_o); printf("\n");
             /* END VECTORING */

             /* START ROTATION */
            printf("Opt-1 CORDIC-Rotation\n");
            time_start = clock();
            for (int k = 0; k < NUM_TRIALS; k++) {
                for (int j = 0; j < NUM_ITERATIONS; j++) {
                    cordic_opt1_rotation(z_i, &x_o, &y_o);
                }
            }
            time_end = clock();
            time_elapsed = (int) ((double) (time_end - time_start) / (double) NUM_TRIALS);
            yd_o = (double) y_o / SCALE_FACTOR;
            xd_o = (double) x_o / SCALE_FACTOR;
            printf("Average ticks:     %d\n", time_elapsed);
            printf("x = rotate(z):     %f\n", xd_o);
            printf("y = rotate(z):     %f\n", yd_o);
            printf("binary(x):         "); binary_print(x_o);
            printf("binary(y):         "); binary_print(y_o); printf("\n");
            /* END ROTATION */
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
