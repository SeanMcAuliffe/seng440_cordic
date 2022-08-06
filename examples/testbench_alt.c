#include <stdio.h>
#include <math.h>

/*
 * Compile with: gcc testbench.c -o testbench.exe -lm
 */

double testbench(double x_d, double y_d, double* z_d) {

    *z_d = atan(y_d / x_d);  /* call std-C math routines */

}