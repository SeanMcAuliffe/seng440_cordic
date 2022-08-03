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


static int32_t z_table[23] = {6588397, 3889358, 2055029, 1043165, 523606, 262058,
                                131061, 65534, 32767, 16383, 8191, 4095, 2047, 1023,
                                 511, 255, 127, 63, 31, 15, 7, 3, 1};

void cordic_naive(int32_t *x, int32_t *y, int32_t *z) {
    int32_t x_temp_1, y_temp_1, z_temp;
    int32_t x_temp_2, y_temp_2;
    int32_t i;

    x_temp_1 = *x;
    y_temp_1 = *y;
    z_temp = 0;

    for (i=0; i<23; i++) {
        if (y_temp_1 > 0) {
            // Rotate downwards by arctan(2^-i)
            x_temp_2 = x_temp_1 + (y_temp_1 >> i);
            y_temp_2 = y_temp_1 - (x_temp_1 >> i);
            z_temp += z_table[i];
        } else {
            // Rotate upwards by arctan(2^-i)
            x_temp_2 = x_temp_1 - (y_temp_1 >> i);
            y_temp_2 = y_temp_1 + (x_temp_1 >> i);
            z_temp -= z_table[i];
        }

        x_temp_1 = x_temp_2;
        y_temp_1 = y_temp_2;
    }

    // *x = x_temp_1;
    // *y = y_temp_1;
    *z = z_temp;
}
