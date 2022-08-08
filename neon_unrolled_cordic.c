#include <stdint.h>
#include <stdio.h>
#include <arm_neon.h>
#include "constants.h"

/* Inverse power of two table, to emulate right shift by i
* (since right shift amount must be compile time constant to use
* vshr_n_s32() */
//const int32_t divs[19] = {524288, 262144, 131072, 65536, 32768, 16384, 8192, 4096, 2048, 1024, 512, 256, 128, 64, 32, 16, 8, 4, 2};

public void neon_unrolled_cordic_vectoring(register int32_t x, register int32_t y,
                                 register int32_t* x_o, register int32_t* z_o)
{
    register int32_t x_temp_1, y_temp_1, z_temp;
    register int32_t y_temp;

    // register int32_t e0;
    // register int32_t e1;

    register uint64_t vec_1;
    register uint64_t vec_2;
    register uint64_t vec_3;
    register uint64_t vec_4;

    x_temp_1 = x;
    y_temp_1 = y;
    z_temp = 0;

    // Pack input vectors
    vec_1 = x_temp_1;
    vec_1 = (vec_1 << 32) | y_temp_1;
    int32x2_t xy = vcreate_s32(vec_1);
    vec_2 = y_temp_1;
    vec_2 = (vec_2<<32) | x_temp_1;
    int32x2_t yx = vcreate_s32(vec_2);
    vec_3 = 0x00000001FFFFFFFF;
    int32x2_t neg_x = vcreate_s32(vec_3);
    vec_4 = 0xFFFFFFFF00000001;
    int32x2_t neg_y = vcreate_s32(vec_4);

    // UNROLLED
    y_temp = vget_lane_s32(xy, 0);
    //yx = vshr_n_s32(yx, 0);
    if (y_temp >= 0)
    {
        yx = vmul_s32(yx, neg_x);
        xy = vadd_s32(xy, yx);
        z_temp += 411774;
    }
    else
    {
        yx = vmul_s32(yx, neg_y);
        xy = vadd_s32(xy, yx);
        z_temp -= 411774;
    }
    yx = vrev64_s32(xy);

    y_temp = vget_lane_s32(xy, 0);
    yx = vshr_n_s32(yx, 1);
    if (y_temp >= 0)
    {
        yx = vmul_s32(yx, neg_x);
        xy = vadd_s32(xy, yx);
        z_temp += 243084;
    }
    else
    {
        yx = vmul_s32(yx, neg_y);
        xy = vadd_s32(xy, yx);
        z_temp -= 243084;
    }
    yx = vrev64_s32(xy);

    y_temp = vget_lane_s32(xy, 0);
    yx = vshr_n_s32(yx, 2);
    if (y_temp >= 0)
    {
        yx = vmul_s32(yx, neg_x);
        xy = vadd_s32(xy, yx);
        z_temp += 128439;
    }
    else
    {
        yx = vmul_s32(yx, neg_y);
        xy = vadd_s32(xy, yx);
        z_temp -= 128439;
    }
    yx = vrev64_s32(xy);

    y_temp = vget_lane_s32(xy, 0);
    yx = vshr_n_s32(yx, 3);
    if (y_temp >= 0)
    {
        yx = vmul_s32(yx, neg_x);
        xy = vadd_s32(xy, yx);
        z_temp += 65197;
    }
    else
    {
        yx = vmul_s32(yx, neg_y);
        xy = vadd_s32(xy, yx);
        z_temp -= 65197;
    }
    yx = vrev64_s32(xy);

    y_temp = vget_lane_s32(xy, 0);
    yx = vshr_n_s32(yx, 4);
    if (y_temp >= 0)
    {
        yx = vmul_s32(yx, neg_x);
        xy = vadd_s32(xy, yx);
        z_temp += 32725;
    }
    else
    {
        yx = vmul_s32(yx, neg_y);
        xy = vadd_s32(xy, yx);
        z_temp -= 32725;
    }
    yx = vrev64_s32(xy);

    y_temp = vget_lane_s32(xy, 0);
    yx = vshr_n_s32(yx, 5);
    if (y_temp >= 0)
    {
        yx = vmul_s32(yx, neg_x);
        xy = vadd_s32(xy, yx);
        z_temp += 16378;
    }
    else
    {
        yx = vmul_s32(yx, neg_y);
        xy = vadd_s32(xy, yx);
        z_temp -= 16378;
    }
    yx = vrev64_s32(xy);

    y_temp = vget_lane_s32(xy, 0);
    yx = vshr_n_s32(yx, 6);
    if (y_temp >= 0)
    {
        yx = vmul_s32(yx, neg_x);
        xy = vadd_s32(xy, yx);
        z_temp += 8191;
    }
    else
    {
        yx = vmul_s32(yx, neg_y);
        xy = vadd_s32(xy, yx);
        z_temp -= 8191;
    }
    yx = vrev64_s32(xy);

    y_temp = vget_lane_s32(xy, 0);
    yx = vshr_n_s32(yx, 7);
    if (y_temp >= 0)
    {
        yx = vmul_s32(yx, neg_x);
        xy = vadd_s32(xy, yx);
        z_temp += 4095;
    }
    else
    {
        yx = vmul_s32(yx, neg_y);
        xy = vadd_s32(xy, yx);
        z_temp -= 4095;
    }
    yx = vrev64_s32(xy);

    y_temp = vget_lane_s32(xy, 0);
    yx = vshr_n_s32(yx, 8);
    if (y_temp >= 0)
    {
        yx = vmul_s32(yx, neg_x);
        xy = vadd_s32(xy, yx);
        z_temp += 2047;
    }
    else
    {
        yx = vmul_s32(yx, neg_y);
        xy = vadd_s32(xy, yx);
        z_temp -= 2047;
    }
    yx = vrev64_s32(xy);

    y_temp = vget_lane_s32(xy, 0);
    yx = vshr_n_s32(yx, 9);
    if (y_temp >= 0)
    {
        yx = vmul_s32(yx, neg_x);
        xy = vadd_s32(xy, yx);
        z_temp += 1023;
    }
    else
    {
        yx = vmul_s32(yx, neg_y);
        xy = vadd_s32(xy, yx);
        z_temp -= 1023;
    }
    yx = vrev64_s32(xy);

    y_temp = vget_lane_s32(xy, 0);
    yx = vshr_n_s32(yx, 10);
    if (y_temp >= 0)
    {
        yx = vmul_s32(yx, neg_x);
        xy = vadd_s32(xy, yx);
        z_temp += 511;
    }
    else
    {
        yx = vmul_s32(yx, neg_y);
        xy = vadd_s32(xy, yx);
        z_temp -= 511;
    }
    yx = vrev64_s32(xy);

    y_temp = vget_lane_s32(xy, 0);
    yx = vshr_n_s32(yx, 11);
    if (y_temp >= 0)
    {
        yx = vmul_s32(yx, neg_x);
        xy = vadd_s32(xy, yx);
        z_temp += 255;
    }
    else
    {
        yx = vmul_s32(yx, neg_y);
        xy = vadd_s32(xy, yx);
        z_temp -= 255;
    }
    yx = vrev64_s32(xy);

    y_temp = vget_lane_s32(xy, 0);
    yx = vshr_n_s32(yx, 12);
    if (y_temp >= 0)
    {
        yx = vmul_s32(yx, neg_x);
        xy = vadd_s32(xy, yx);
        z_temp += 127;
    }
    else
    {
        yx = vmul_s32(yx, neg_y);
        xy = vadd_s32(xy, yx);
        z_temp -= 127;
    }
    yx = vrev64_s32(xy);

    y_temp = vget_lane_s32(xy, 0);
    yx = vshr_n_s32(yx, 13);
    if (y_temp >= 0)
    {
        yx = vmul_s32(yx, neg_x);
        xy = vadd_s32(xy, yx);
        z_temp += 63;
    }
    else
    {
        yx = vmul_s32(yx, neg_y);
        xy = vadd_s32(xy, yx);
        z_temp -= 63;
    }
    yx = vrev64_s32(xy);

    y_temp = vget_lane_s32(xy, 0);
    yx = vshr_n_s32(yx, 14);
    if (y_temp >= 0)
    {
        yx = vmul_s32(yx, neg_x);
        xy = vadd_s32(xy, yx);
        z_temp += 31;
    }
    else
    {
        yx = vmul_s32(yx, neg_y);
        xy = vadd_s32(xy, yx);
        z_temp -= 31;
    }
    yx = vrev64_s32(xy);

    y_temp = vget_lane_s32(xy, 0);
    yx = vshr_n_s32(yx, 15);
    if (y_temp >= 0)
    {
        yx = vmul_s32(yx, neg_x);
        xy = vadd_s32(xy, yx);
        z_temp += 15;
    }
    else
    {
        yx = vmul_s32(yx, neg_y);
        xy = vadd_s32(xy, yx);
        z_temp -= 15;
    }
    yx = vrev64_s32(xy);

    y_temp = vget_lane_s32(xy, 0);
    yx = vshr_n_s32(yx, 16);
    if (y_temp >= 0)
    {
        yx = vmul_s32(yx, neg_x);
        xy = vadd_s32(xy, yx);
        z_temp += 7;
    }
    else
    {
        yx = vmul_s32(yx, neg_y);
        xy = vadd_s32(xy, yx);
        z_temp -= 7;
    }
    yx = vrev64_s32(xy);

    y_temp = vget_lane_s32(xy, 0);
    yx = vshr_n_s32(yx, 17);
    if (y_temp >= 0)
    {
        yx = vmul_s32(yx, neg_x);
        xy = vadd_s32(xy, yx);
        z_temp += 3;
    }
    else
    {
        yx = vmul_s32(yx, neg_y);
        xy = vadd_s32(xy, yx);
        z_temp -= 3;
    }
    yx = vrev64_s32(xy);

    y_temp = vget_lane_s32(xy, 0);
    yx = vshr_n_s32(yx, 18);
    if (y_temp >= 0)
    {
        yx = vmul_s32(yx, neg_x);
        xy = vadd_s32(xy, yx);
        z_temp += 1;
    }
    else
    {
        yx = vmul_s32(yx, neg_y);
        xy = vadd_s32(xy, yx);
        z_temp -= 1;
    }
    // yx = vrev64_s32(xy);

    // // ROLLED VERSION
    // for (i = 0; i < 19; i++)
    // {
    //     y_temp = vget_lane_s32(xy, 0);
    //     // printf("5 (If condition check) \n");
    //     // e0 = vget_lane_s32(xy, 1);
    //     // e1 = vget_lane_s32(xy, 0);
    //     // printf("e0 (x) = %d, e1 (y_temp) = %d\n", e0, e1);

    //     if (y_temp >= 0)
    //     {
    //         //xy += (yx >> i) * neg_x
    //        // yx = vmul_n_s32(yx, divs[i]);
    //         e0 = vget_lane_s32(yx, 1); //y_temp_1
    //         e1 = vget_lane_s32(yx, 0); //x_temp_1
    //         e0 = e0 >> i;
    //         e1 = e1 >> i;
    //         vec_1 = e0;
    //         // Cast to 64 bits to OR together the vector bitfield
    //         vec_1 = (vec_1 << 32) | e1;
    //         yx = vcreate_s32(vec_1);
    //         // printf("7 (in loop) \n");
    //         // e0 = vget_lane_s32(yx, 1);
    //         // e1 = vget_lane_s32(yx, 0);
    //         // printf("e0 (y) = %d, e1 (x) = %d\n", e0, e1);
    //         yx = vmul_s32(yx, neg_x);
    //         xy = vadd_s32(xy, yx);
    //         z_temp += z_table[i];
    //     }
    //     else
    //     {
    //         // xy += (yx >> i) * neg_y
    //         //yx = vmul_n_s32(yx, divs[i]);
    //         e0 = vget_lane_s32(yx, 1); //y_temp_1
    //         e1 = vget_lane_s32(yx, 0); //x_temp_1
    //         e0 = e0 >> i;
    //         e1 = e1 >> i;
    //         vec_1 = e0;
    //         vec_1 = (vec_1 << 32) | e1;
    //         yx = vcreate_s32(vec_1);
    //         yx = vmul_s32(yx, neg_y);
    //         xy = vadd_s32(xy, yx);
    //         z_temp -= z_table[i];
    //     }
    //     // printf("6 (before swap) \n");
    //     // e0 = vget_lane_s32(xy, 1);
    //     // e1 = vget_lane_s32(xy, 0);
    //     // printf("e0 (x) = %d, e1 (y) = %d\n", e0, e1);
    //     yx = vrev64_s32(xy);
    //     // printf("6 (after swap) \n");
    //     // e0 = vget_lane_s32(yx, 1);
    //     // e1 = vget_lane_s32(yx, 0);
    //     // printf("e0 (y) = %d, e1 (x) = %d\n", e0, e1);
    // }

    *x_o = vget_lane_s32(xy, 1);
    *z_o = z_temp;
}