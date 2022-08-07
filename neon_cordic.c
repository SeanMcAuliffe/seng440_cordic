#include <stdint.h>
#include <stdio.h>
#include <arm_neon.h>
#include "constants.h"

/* Inverse power of two table, to emulate right shift by i
* (since right shift amount must be compile time constant to use
* vshr_n_s32() */
const int32_t divs[19] = {524288, 262144, 131072, 65536, 32768, 16384, 8192, 4096, 2048, 1024, 512, 256, 128, 64, 32, 16, 8, 4, 2};

public void neon_cordic_vectoring(register int32_t x, register int32_t y,
                                 register int32_t* x_o, register int32_t* z_o)
{
    register int32_t x_temp_1, y_temp_1, z_temp;
    register int32_t i;

    // Temporary variables for packing registers into vectors
    uint64_t vec_1;
    uint64_t vec_2;
    uint64_t vec_3;
    uint64_t vec_4;

    x_temp_1 = x;
    y_temp_1 = y;
    z_temp = 0;

    // Pack input vectors
    vec_1 = (x_temp_1<<31) | y_temp_1;
    int32x2_t xy = vcreate_s32(vec_1);
    vec_2 = (y_temp_1<<31) | x_temp_1;
    int32x2_t yx = vcreate_s32(vec_2);
    vec_3 = (1<<31) | (-1);
    int32x2_t neg_x = vcreate_s32(vec_3);
    vec_4 = (-1<<31) | (1);
    int32x2_t neg_y = vcreate_s32(vec_4);

    for (i = 0; i < 19; i++)
    {
        int32_t y_temp = vget_lane_s32(xy, 1);
        if (y_temp >= 0)
        {
            //xy += (yx >> i) * neg_x
            yx = vmul_n_s32(yx, divs[i]);
            yx = vmul_s32(yx, neg_x);
            xy = vadd_s32(xy, yx);
            z_temp += z_table[i];
        }
        else
        {
            // xy += (yx >> i) * neg_y
            yx = vmul_n_s32(yx, divs[i]);
            yx = vmul_s32(yx, neg_y);
            xy = vadd_s32(xy, yx);
            z_temp -= z_table[i];
        }
        yx = vrev64_s32(xy);
    }

    *x_o = vget_lane_s32(xy, 0);
    *z_o = z_temp;
}