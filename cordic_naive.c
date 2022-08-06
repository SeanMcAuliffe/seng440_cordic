/*
* This represents the initial (naive) implementation of the fixed-point
* CORDIC algorithm in vectoring mode. No high level C optmizations have
* been applied.
*
* This version uses 23 bits to achieve 16 bits of final precision.
*/

#include <stdio.h>
#include <math.h>
#include <stdint.h>

/* Integer image of the lim(n->inf) K(n), represented in 16 bits.
* lim(n->inf) K(n) = 0.6072529350088812561694
*/
const int32_t K_FACTOR = 318375;

static int32_t z_table[19] = {411774, 243084, 128439, 65197, 32725, 16378,
                             8191, 4095, 2047, 1023, 511, 255, 127, 63, 31,
                             15, 7, 3, 1};

/*
* This function implements the CORDIC algorithm in vectoring mode using fixed point arithmetic.
* It calculates the output to 16 bits of precision, where 15 bits represent the magnitude, and
* the final bit represents the sign.
* The arguments x and y represent the input vector. The output is stored in x_o, y_o and z_o
* (_o for output).
*/
void cordic_naive_vectoring(int32_t x, int32_t y, int32_t* x_o, int32_t* y_o, int32_t* z_o) {
    int32_t x_temp_1, y_temp_1, z_temp;
    int32_t x_temp_2, y_temp_2;
    int32_t i;

    x_temp_1 = x;
    y_temp_1 = y;
    z_temp = 0;

    for (i = 0; i < 19; i++) {
        if (y_temp_1 >= 0) {
            /* Rotate downwards by arctan(2^-i) */
            x_temp_2 = x_temp_1 + (y_temp_1 >> i);
            y_temp_2 = y_temp_1 - (x_temp_1 >> i);
            z_temp += z_table[i];
        } else {
            /* Rotate upwards by arctan(2^-i) */
            x_temp_2 = x_temp_1 - (y_temp_1 >> i);
            y_temp_2 = y_temp_1 + (x_temp_1 >> i);
            z_temp -= z_table[i];
        }
        x_temp_1 = x_temp_2;
        y_temp_1 = y_temp_2;
    }

    /* If we implement rounding, should we be concerned with the 
    number of significant bits in the output before roudning? */
    *x_o = x_temp_1;
    *y_o = y_temp_1;
    *z_o = z_temp;
}

/*
* This function implements the CORDIC algorithm in rotation mode using fixed point arithmetic.
* It calculates the output to 16 bits of precision, where 15 bits represent the magnitude, and
* the final bit represents the sign.
* The input argument z represent the input angle. The output is stored in x_o, y_o and z_o
* (_o for output). x_o and y_o represent cos(z), sin(z) respectively.
*/
void cordic_naive_rotation(int32_t z, int32_t *x_o, int32_t *y_o, int32_t *z_o) {
    int32_t x_temp_1, y_temp_1, z_temp;
    int32_t x_temp_2, y_temp_2;
    int32_t i;

    x_temp_1 = K_FACTOR;
    y_temp_1 = 0;
    z_temp = z;

    for (i = 0; i < 19; i++) {
        if (z_temp < 0) {
            /* Rotate downwards by arctan(2^-i) */
            x_temp_2 = x_temp_1 + (y_temp_1 >> i);
            y_temp_2 = y_temp_1 - (x_temp_1 >> i);
            z_temp += z_table[i];
        } else {
            /* Rotate upwards by arctan(2^-i) */
            x_temp_2 = x_temp_1 - (y_temp_1 >> i);
            y_temp_2 = y_temp_1 + (x_temp_1 >> i);
            z_temp -= z_table[i];
        }
        x_temp_1 = x_temp_2;
        y_temp_1 = y_temp_2;
    }

    *x_o = x_temp_1;
    *y_o = y_temp_1;
    *z_o = z_temp; 
}
