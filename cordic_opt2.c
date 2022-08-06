/*
* This represents the our first attempt to optimize the fixed-point
* CORDIC algorithm.
*
* This version uses 23 bits to achieve 16 bits of final precision.
*/

#include <stdio.h>
#include <math.h>
#include <stdint.h>
#include "constants.h"

/*
* This function implements the CORDIC algorithm in vectoring mode using fixed point arithmetic.
* It calculates the output to 16 bits of precision, where 15 bits represent the magnitude, and
* the final bit represents the sign.
* The arguments x and y represent the input vector. The output is stored in x_o, y_o and z_o
* (_o for output).
*/
void cordic_opt2_vectoring(int32_t x, int32_t y, int32_t* restrict x_o, int32_t* restrict z_o) {
    register int32_t x_temp_1, y_temp_1, z_temp, sign;
    register int32_t x_temp_2;
    register int32_t i;
    register const int32_t* table_access = z_table;

    x_temp_1 = x;
    y_temp_1 = y;
    z_temp = 0;

    for (i = 0; i < 19; i++) {
        if (y_temp_1 >= 0) sign = 
        if (y_temp_1 >= 0) {
            /* Rotate downwards by arctan(2^-i) */
            x_temp_2 = x_temp_1 + (y_temp_1 >> i);
            y_temp_1 -= (x_temp_1 >> i);
            z_temp += *table_access;
        } else {
            /* Rotate upwards by arctan(2^-i) */
            x_temp_2 = x_temp_1 - (y_temp_1 >> i);
            y_temp_1 += (x_temp_1 >> i);
            z_temp -= *table_access;
        }
        x_temp_1 = x_temp_2;
        table_access++;
    }

    /* Optimize return statements, we don't care about value of y */
    *x_o = x_temp_1;
    // *y_o = y_temp_1;
    *z_o = z_temp;
}

/*
* This function implements the CORDIC algorithm in rotation mode using fixed point arithmetic.
* It calculates the output to 16 bits of precision, where 15 bits represent the magnitude, and
* the final bit represents the sign.
* The input argument z represent the input angle. The output is stored in x_o, y_o and z_o
* (_o for output). x_o and y_o represent cos(z), sin(z) respectively.
*/
void cordic_opt2_rotation(int32_t z, int32_t* restrict x_o, int32_t* restrict y_o) {
    register int32_t x_temp_1, y_temp_1, z_temp;
    register int32_t x_temp_2;
    register int32_t i;
    register const int32_t* table_access = z_table;

    x_temp_1 = K_FACTOR;
    y_temp_1 = 0;
    z_temp = z;

   for (i = 0; i < 19; i++) {
        if (z_temp < 0) {
            x_temp_2 = x_temp_1 + (y_temp_1 >> i);
            y_temp_1 -= (x_temp_1 >> i);
            z_temp += *table_access;
        } else {
            x_temp_2 = x_temp_1 - (y_temp_1 >> i);
            y_temp_1 += (x_temp_1 >> i);
            z_temp -= *table_access;
        }
        x_temp_1 = x_temp_2;
        table_access++;
    }

    /* optimise return statements, we don't care about value of z */
    *x_o = x_temp_1;
    *y_o = y_temp_1;
    // *z_o = z_temp; 
}