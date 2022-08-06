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

static int32_t z_table[15] = {25735, 15192, 8027, 4074, 2045, 1023,
                                511, 255, 127, 63, 31, 15, 7, 3, 1};

void cordic_naive_vectoring(int32_t x, int32_t y, int32_t* x_o, int32_t* y_o, int32_t* z_o) {
    int32_t x_temp_1, y_temp_1, z_temp;
    int32_t x_temp_2, y_temp_2;
    int32_t i;

    x_temp_1 = x;
    y_temp_1 = y;
    z_temp = 0;

    for (i = 0; i < 15; i++) {
        if (y_temp_1 > 0) {
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

void cordic_naive_rotation(int32_t *x, int32_t *y, int32_t *z) {
}
