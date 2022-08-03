/*
* This is a reference call to the C math library atan function, to compare the
* performance increase by using the CORDIC fixed point implementations.
*/

#include <stdio.h>
#include <math.h>
#include <stdint.h>


double atan_reference(double x_d, double y_d, double* z_d) {

    *z_d = atan(y_d / x_d);  /* call std-C math routines */

}
