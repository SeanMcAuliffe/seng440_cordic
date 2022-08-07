/*
* This represents the our first attempt to optimize the fixed-point
* CORDIC algorithm.
*
* This version uses 23 bits to achieve 16 bits of final precision.
*/

#include <stdint.h>
#include "constants.h"

/*
* This function implements the CORDIC algorithm in vectoring mode using fixed point arithmetic.
* It calculates the output to 16 bits of precision, where 15 bits represent the magnitude, and
* the final bit represents the sign.
* The arguments x and y represent the input vector. The output is stored in x_o, y_o and z_o
* (_o for output).
*/
public void cordic_opt2_vectoring(register int32_t x, register int32_t y,
                           int32_t * restrict x_o, int32_t * restrict z_o)
{
    register int32_t x_temp_1, y_temp_1, z_temp;
    register int32_t x_temp_2;
    register int32_t sign;

    x_temp_1 = x;
    y_temp_1 = y;
    z_temp = 0;

    sign = (y_temp_1 >> 31);
    x_temp_2 = x_temp_1 + (((y_temp_1) ^ sign) - sign);
    y_temp_1 -= (((x_temp_1) ^ sign) - sign);
    z_temp += ((z_table[0] ^ sign) - sign);
    x_temp_1 = x_temp_2;

    sign = (y_temp_1 >> 31);
    x_temp_2 = x_temp_1 + (((y_temp_1>>1) ^ sign) - sign);
    y_temp_1 -= (((x_temp_1>>1) ^ sign) - sign);
    z_temp += ((z_table[1] ^ sign) - sign);
    x_temp_1 = x_temp_2;

    sign = (y_temp_1 >> 31);
    x_temp_2 = x_temp_1 + (((y_temp_1>>(2)) ^ sign) - sign);
    y_temp_1 -= (((x_temp_1>>(2)) ^ sign) - sign);
    z_temp += ((z_table[2] ^ sign) - sign);
    x_temp_1 = x_temp_2;

    sign = (y_temp_1 >> 31);
    x_temp_2 = x_temp_1 + (((y_temp_1>>(3)) ^ sign) - sign);
    y_temp_1 -= (((x_temp_1>>(3)) ^ sign) - sign);
    z_temp += ((z_table[3] ^ sign) - sign);
    x_temp_1 = x_temp_2;

    sign = (y_temp_1 >> 31);
    x_temp_2 = x_temp_1 + (((y_temp_1>>(4)) ^ sign) - sign);
    y_temp_1 -= (((x_temp_1>>(4)) ^ sign) - sign);
    z_temp += ((z_table[4] ^ sign) - sign);
    x_temp_1 = x_temp_2;

    sign = (y_temp_1 >> 31);
    x_temp_2 = x_temp_1 + (((y_temp_1>>(5)) ^ sign) - sign);
    y_temp_1 -= (((x_temp_1>>(5)) ^ sign) - sign);
    z_temp += ((z_table[5] ^ sign) - sign);
    x_temp_1 = x_temp_2;

    sign = (y_temp_1 >> 31);
    x_temp_2 = x_temp_1 + (((y_temp_1>>(6)) ^ sign) - sign);
    y_temp_1 -= (((x_temp_1>>(6)) ^ sign) - sign);
    z_temp += ((z_table[6] ^ sign) - sign);
    x_temp_1 = x_temp_2;

    sign = (y_temp_1 >> 31);
    x_temp_2 = x_temp_1 + (((y_temp_1>>(7)) ^ sign) - sign);
    y_temp_1 -= (((x_temp_1>>(7)) ^ sign) - sign);
    z_temp += ((z_table[7] ^ sign) - sign);
    x_temp_1 = x_temp_2;

    sign = (y_temp_1 >> 31);
    x_temp_2 = x_temp_1 + (((y_temp_1>>(8)) ^ sign) - sign);
    y_temp_1 -= (((x_temp_1>>(8)) ^ sign) - sign);
    z_temp += ((z_table[8] ^ sign) - sign);
    x_temp_1 = x_temp_2;

    sign = (y_temp_1 >> 31);
    x_temp_2 = x_temp_1 + (((y_temp_1>>9) ^ sign) - sign);
    y_temp_1 -= (((x_temp_1>>9) ^ sign) - sign);
    z_temp += ((z_table[9] ^ sign) - sign);
    x_temp_1 = x_temp_2;

    sign = (y_temp_1 >> 31);
    x_temp_2 = x_temp_1 + (((y_temp_1>>10) ^ sign) - sign);
    y_temp_1 -= (((x_temp_1>>10) ^ sign) - sign);
    z_temp += ((z_table[10] ^ sign) - sign);
    x_temp_1 = x_temp_2;

    sign = (y_temp_1 >> 31);
    x_temp_2 = x_temp_1 + (((y_temp_1>>11) ^ sign) - sign);
    y_temp_1 -= (((x_temp_1>>11) ^ sign) - sign);
    z_temp += ((z_table[11] ^ sign) - sign);
    x_temp_1 = x_temp_2;

    sign = (y_temp_1 >> 31);
    x_temp_2 = x_temp_1 + (((y_temp_1>>12) ^ sign) - sign);
    y_temp_1 -= (((x_temp_1>>12) ^ sign) - sign);
    z_temp += ((z_table[12] ^ sign) - sign);
    x_temp_1 = x_temp_2;

    sign = (y_temp_1 >> 31);
    x_temp_2 = x_temp_1 + (((y_temp_1>>13) ^ sign) - sign);
    y_temp_1 -= (((x_temp_1>>13) ^ sign) - sign);
    z_temp += ((z_table[13] ^ sign) - sign);
    x_temp_1 = x_temp_2;

    sign = (y_temp_1 >> 31);
    x_temp_2 = x_temp_1 + (((y_temp_1>>14) ^ sign) - sign);
    y_temp_1 -= (((x_temp_1>>14) ^ sign) - sign);
    z_temp += ((z_table[14] ^ sign) - sign);
    x_temp_1 = x_temp_2;

    sign = (y_temp_1 >> 31);
    x_temp_2 = x_temp_1 + (((y_temp_1>>15) ^ sign) - sign);
    y_temp_1 -= (((x_temp_1>>15) ^ sign) - sign);
    z_temp += ((z_table[15] ^ sign) - sign);
    x_temp_1 = x_temp_2;

    sign = (y_temp_1 >> 31);
    x_temp_2 = x_temp_1 + (((y_temp_1>>16) ^ sign) - sign);
    y_temp_1 -= (((x_temp_1>>16) ^ sign) - sign);
    z_temp += ((z_table[16] ^ sign) - sign);
    x_temp_1 = x_temp_2;

    sign = (y_temp_1 >> 31);
    x_temp_2 = x_temp_1 + (((y_temp_1>>17) ^ sign) - sign);
    y_temp_1 -= (((x_temp_1>>17) ^ sign) - sign);
    z_temp += ((z_table[17] ^ sign) - sign);
    x_temp_1 = x_temp_2;

    sign = (y_temp_1 >> 31);
    x_temp_2 = x_temp_1 + (((y_temp_1>>18) ^ sign) - sign);
    y_temp_1 -= (((x_temp_1>>18) ^ sign) - sign);
    z_temp += ((z_table[18] ^ sign) - sign);
    x_temp_1 = x_temp_2;

    *x_o = x_temp_1;
    *z_o = z_temp;
}

/*
* This function implements the CORDIC algorithm in rotation mode using fixed point arithmetic.
* It calculates the output to 16 bits of precision, where 15 bits represent the magnitude, and
* the final bit represents the sign.
* The input argument z represent the input angle. The output is stored in x_o, y_o and z_o
* (_o for output). x_o and y_o represent cos(z), sin(z) respectively.
*/

public void cordic_opt2_rotation(register int32_t z,
                                 register int32_t * restrict x_o,
                                 int32_t * restrict y_o)
{
    register int32_t x_temp_1, y_temp_1, z_temp;
    register int32_t x_temp_2;
    register int32_t sign;

    x_temp_1 = K_FACTOR;
    y_temp_1 = 0;
    z_temp = z;

    sign = (z_temp >> 31);
    x_temp_2 = x_temp_1 - (((y_temp_1) ^ sign) - sign);
    y_temp_1 += (((x_temp_1) ^ sign) - sign);
    z_temp -= ((z_table[0] ^ sign) - sign);
    x_temp_1 = x_temp_2;

    sign = (z_temp >> 31);
    x_temp_2 = x_temp_1 - (((y_temp_1>>1) ^ sign) - sign);
    y_temp_1 += (((x_temp_1>>1) ^ sign) - sign);
    z_temp -= ((z_table[1] ^ sign) - sign);
    x_temp_1 = x_temp_2;

    sign = (z_temp >> 31);
    x_temp_2 = x_temp_1 - (((y_temp_1>>2) ^ sign) - sign);
    y_temp_1 += (((x_temp_1>>2) ^ sign) - sign);
    z_temp -= ((z_table[2] ^ sign) - sign);
    x_temp_1 = x_temp_2;

    sign = (z_temp >> 31);
    x_temp_2 = x_temp_1 - (((y_temp_1>>3) ^ sign) - sign);
    y_temp_1 += (((x_temp_1>>3) ^ sign) - sign);
    z_temp -= ((z_table[3] ^ sign) - sign);
    x_temp_1 = x_temp_2;

    sign = (z_temp >> 31);
    x_temp_2 = x_temp_1 - (((y_temp_1>>4) ^ sign) - sign);
    y_temp_1 += (((x_temp_1>>4) ^ sign) - sign);
    z_temp -= ((z_table[4] ^ sign) - sign);
    x_temp_1 = x_temp_2;

    sign = (z_temp >> 31);
    x_temp_2 = x_temp_1 - (((y_temp_1>>5) ^ sign) - sign);
    y_temp_1 += (((x_temp_1>>5) ^ sign) - sign);
    z_temp -= ((z_table[5] ^ sign) - sign);
    x_temp_1 = x_temp_2;

    sign = (z_temp >> 31);
    x_temp_2 = x_temp_1 - (((y_temp_1>>6) ^ sign) - sign);
    y_temp_1 += (((x_temp_1>>6) ^ sign) - sign);
    z_temp -= ((z_table[6] ^ sign) - sign);
    x_temp_1 = x_temp_2;

    sign = (z_temp >> 31);
    x_temp_2 = x_temp_1 - (((y_temp_1>>7) ^ sign) - sign);
    y_temp_1 += (((x_temp_1>>7) ^ sign) - sign);
    z_temp -= ((z_table[7] ^ sign) - sign);
    x_temp_1 = x_temp_2;

    sign = (z_temp >> 31);
    x_temp_2 = x_temp_1 - (((y_temp_1>>8) ^ sign) - sign);
    y_temp_1 += (((x_temp_1>>8) ^ sign) - sign);
    z_temp -= ((z_table[8] ^ sign) - sign);
    x_temp_1 = x_temp_2;

    sign = (z_temp >> 31);
    x_temp_2 = x_temp_1 - (((y_temp_1>>9) ^ sign) - sign);
    y_temp_1 += (((x_temp_1>>9) ^ sign) - sign);
    z_temp -= ((z_table[9] ^ sign) - sign);
    x_temp_1 = x_temp_2;

    sign = (z_temp >> 31);
    x_temp_2 = x_temp_1 - (((y_temp_1>>10) ^ sign) - sign);
    y_temp_1 += (((x_temp_1>>10) ^ sign) - sign);
    z_temp -= ((z_table[10] ^ sign) - sign);
    x_temp_1 = x_temp_2;

    sign = (z_temp >> 31);
    x_temp_2 = x_temp_1 - (((y_temp_1>>11) ^ sign) - sign);
    y_temp_1 += (((x_temp_1>>11) ^ sign) - sign);
    z_temp -= ((z_table[11] ^ sign) - sign);
    x_temp_1 = x_temp_2;

    sign = (z_temp >> 31);
    x_temp_2 = x_temp_1 - (((y_temp_1>>12) ^ sign) - sign);
    y_temp_1 += (((x_temp_1>>12) ^ sign) - sign);
    z_temp -= ((z_table[12] ^ sign) - sign);
    x_temp_1 = x_temp_2;

    sign = (z_temp >> 31);
    x_temp_2 = x_temp_1 - (((y_temp_1>>13) ^ sign) - sign);
    y_temp_1 += (((x_temp_1>>13) ^ sign) - sign);
    z_temp -= ((z_table[13] ^ sign) - sign);
    x_temp_1 = x_temp_2;

    sign = (z_temp >> 31);
    x_temp_2 = x_temp_1 - (((y_temp_1>>14) ^ sign) - sign);
    y_temp_1 += (((x_temp_1>>14) ^ sign) - sign);
    z_temp -= ((z_table[14] ^ sign) - sign);
    x_temp_1 = x_temp_2;

    sign = (z_temp >> 31);
    x_temp_2 = x_temp_1 - (((y_temp_1>>15) ^ sign) - sign);
    y_temp_1 += (((x_temp_1>>15) ^ sign) - sign);
    z_temp -= ((z_table[15] ^ sign) - sign);
    x_temp_1 = x_temp_2;

    sign = (z_temp >> 31);
    x_temp_2 = x_temp_1 - (((y_temp_1>>16) ^ sign) - sign);
    y_temp_1 += (((x_temp_1>>16) ^ sign) - sign);
    z_temp -= ((z_table[16] ^ sign) - sign);
    x_temp_1 = x_temp_2;

    sign = (z_temp >> 31);
    x_temp_2 = x_temp_1 - (((y_temp_1>>17) ^ sign) - sign);
    y_temp_1 += (((x_temp_1>>17) ^ sign) - sign);
    z_temp -= ((z_table[17] ^ sign) - sign);
    x_temp_1 = x_temp_2;

    sign = (z_temp >> 31);
    x_temp_2 = x_temp_1 - (((y_temp_1>>18) ^ sign) - sign);
    y_temp_1 += (((x_temp_1>>18) ^ sign) - sign);
    z_temp -= ((z_table[18] ^ sign) - sign);
    x_temp_1 = x_temp_2;


    *x_o = x_temp_1;
    *y_o = y_temp_1; 
}
