//#include "cordic_arm.h"
#include <stdint.h>

// int32_t __cordic__(int32_t, int32_t);

void cordic_vectoring_hw(int32_t *x, int32_t *y, int16_t *z)
{
    register int16_t x_out, z_out;
    register int32_t result;

    __asm ("cordic_vec %[res], %[x], %[y]"
    : [res] "=r" (result)
    : [x] "r" (*x), [y] "r" (*y)
    );

    x_out = (int16_t) result >> 16;
    z_out = (int16_t) (result & 0x0000FFFF);

    *x = x_out;
    *z = z_out;
}

void cordic_rotation_hw(int16_t *x, int16_t *y, int32_t *z)
{
    register int16_t x_out, y_out;
    register int32_t result, input;

    input = *x;
    input = (input << 16) | *y;

    __asm ("cordic_rot %[res], %[inp], %[z]"
    : [res] "=r" (result)
    : [inp] "r" (input), [z] "r" (*z)
    );

    x_out = (int16_t) result >> 16;
    y_out = (int16_t) (result & 0x0000FFFF);

    *x = x_out;
    *y = y_out;
}