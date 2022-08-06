/*
* This is a reference call to the C math library atan function, to compare the
* performance increase by using the CORDIC fixed point implementations.
*/

#include <stdio.h>
#include <math.h>
#include <stdint.h>

/* Reference for CORDIC vectoring mode */
void atan_reference(double x_d, double y_d, double* z_d) {
    *z_d = atan(y_d / x_d);
}

/* Reference for CORDIC rotation mode */
void sincos_reference(double z_d, double* x_d, double* y_d) {
    *x_d = cos(z_d);
    *y_d = sin(z_d);
}
