#include <stdio.h>
#include <math.h>
#include <stdint.h>

// z[i] represents integer image of arctan(2^-i) radians
// int z_table[15] = {25735, 15192, 8027, 4074, 2045, 1023,
//                     511, 255, 127, 63, 31, 15, 7, 3, 1};

static int32_t z_table[23] = {6588397, 3889358, 2055029, 1043165, 523606, 262058,
                                131061, 65534, 32767, 16383, 8191, 4095, 2047, 1023,
                                 511, 255, 127, 63, 31, 15, 7, 3, 1};


void cordic_V_fixed_point(int32_t *x, int32_t *y, int32_t *z) {
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

    *x = x_temp_1;
    *y = y_temp_1;
    *z = z_temp;
}

void verify(int32_t x_i_init, int32_t y_i_init, int32_t z_i_init, int32_t x_i, int32_t y_i, int32_t z_i) {
    double x_d_init, y_d_init, z_d_init, x_d, y_d, z_d;
    x_d_init = (double)x_i_init / (1 << 23); /* float image of x_i_init */
    y_d_init = (double)y_i_init / (1 << 23); /* float image of y_i_init */
    z_d_init = (double)z_i_init / (1 << 23); /* float image of of z_i_init */
    x_d = (double)x_i / (1 << 23);
    y_d = (double)y_i / (1 << 23);
    z_d = (double)z_i / (1 << 23);

    printf("x_i_init = %5i\tx_d_init = %g\n", x_i_init, x_d_init);
    printf("y_i_init = %5i\ty_d_init = %g\n", y_i_init, y_d_init);
    printf("z_i_init = %5i\tz_d_init = %g (rad)\n\n", z_i_init, z_d_init);
    printf("x_i_calc = %5i\tx_d_calc = %g\n", x_i, x_d);
    printf("y_i_calc = %5i\ty_d_calc = %g\n", y_i, y_d);
    printf("z_i_calc = %5i\tz_d_calc = %g (rad)\n\n", z_i, z_d);
    printf("Modulus = SQRT(x_d_init^2 + y_d_init^2) = %f\n", sqrt(x_d_init*x_d_init+y_d_init*y_d_init));
} /*** END of verify() function ***/

void main(void) {
    int32_t x_i_init, y_i_init, z_i_init; /* initial values */
    int32_t x_i, y_i, z_i; /* integer (fixed-point) variables */
    x_i = (x_i_init = 5931642);
    y_i = (y_i_init = 5931642);
    z_i_init = 0;
    printf("Vectoring CORDIC:\n\n");
    cordic_V_fixed_point(&x_i, &y_i, &z_i);
    verify(x_i_init, y_i_init, z_i_init, x_i, y_i, z_i);
} /*** END of main() function ***/