/*
* This represents the our first attempt to optimize the fixed-point
* CORDIC algorithm.
*
* This version uses 23 bits to achieve 16 bits of final precision.
*/

#include <stdint.h>

/*
* This function implements the CORDIC algorithm in
* vectoring mode using fixed point arithmetic.
* It calculates the output to 16 bits of precision, 
* where 15 bits represent the magnitude, and
* the final bit represents the sign.
* The arguments x and y represent the input vector. 
* The output is stored in x_o, y_o and z_o (_o for output).
*/

void cordic_opt3b_vectoring(register int32_t x,
                                   register int32_t y,
                                   int32_t* restrict x_o,
                                   int32_t* restrict z_o)
{
    register int32_t x_temp_1, y_temp_1, z_temp;
    register int32_t x_temp_2;
    register int32_t i, sign;

    x_temp_1 = x;
    y_temp_1 = y;
    z_temp = 0;

    if (y_temp_1 >= 0)
    {
        x_temp_2 = x_temp_1 + (y_temp_1);
        y_temp_1 -= (x_temp_1);
        z_temp += 411774;
    }
    else
    {
        x_temp_2 = x_temp_1 - (y_temp_1);
        y_temp_1 += (x_temp_1);
        z_temp -= 411774;
    }
    x_temp_1 = x_temp_2;

    if (y_temp_1 >= 0)
    {
        x_temp_2 = x_temp_1 + (y_temp_1>>1);
        y_temp_1 -= (x_temp_1>>1);
        z_temp += 243084;
    }
    else
    {
        x_temp_2 = x_temp_1 - (y_temp_1>>1);
        y_temp_1 += (x_temp_1>>1);
        z_temp -= 243084;
    }
    x_temp_1 = x_temp_2;

    if (y_temp_1 >= 0)
    {
        x_temp_2 = x_temp_1 + (y_temp_1>>2);
        y_temp_1 -= (x_temp_1>>2);
        z_temp += 128439;
    }
    else
    {
        x_temp_2 = x_temp_1 - (y_temp_1>>2);
        y_temp_1 += (x_temp_1>>2);
        z_temp -= 128439;
    }
    x_temp_1 = x_temp_2;

    if (y_temp_1 >= 0)
    {
        x_temp_2 = x_temp_1 + (y_temp_1>>3);
        y_temp_1 -= (x_temp_1>>3);
        z_temp += 65197;
    }
    else
    {
        x_temp_2 = x_temp_1 - (y_temp_1>>3);
        y_temp_1 += (x_temp_1>>3);
        z_temp -= 65197;
    }
    x_temp_1 = x_temp_2;

    if (y_temp_1 >= 0)
    {
        x_temp_2 = x_temp_1 + (y_temp_1>>4);
        y_temp_1 -= (x_temp_1>>4);
        z_temp += 32725;
    }
    else
    {
        x_temp_2 = x_temp_1 - (y_temp_1>>4);
        y_temp_1 += (x_temp_1>>4);
        z_temp -= 32725;
    }
    x_temp_1 = x_temp_2;

    if (y_temp_1 >= 0)
    {
        x_temp_2 = x_temp_1 + (y_temp_1>>5);
        y_temp_1 -= (x_temp_1>>5);
        z_temp += 16378;
    }
    else
    {
        x_temp_2 = x_temp_1 - (y_temp_1>>5);
        y_temp_1 += (x_temp_1>>5);
        z_temp -= 16378;
    }
    x_temp_1 = x_temp_2;

    if (y_temp_1 >= 0)
    {
        x_temp_2 = x_temp_1 + (y_temp_1>>6);
        y_temp_1 -= (x_temp_1>>6);
        z_temp += 8191;
    }
    else
    {
        x_temp_2 = x_temp_1 - (y_temp_1>>6);
        y_temp_1 += (x_temp_1>>6);
        z_temp -= 8191;
    }
    x_temp_1 = x_temp_2;

    if (y_temp_1 >= 0)
    {
        x_temp_2 = x_temp_1 + (y_temp_1>>7);
        y_temp_1 -= (x_temp_1>>7);
        z_temp += 4095;
    }
    else
    {
        x_temp_2 = x_temp_1 - (y_temp_1>>7);
        y_temp_1 += (x_temp_1>>7);
        z_temp -= 4095;
    }
    x_temp_1 = x_temp_2;

    if (y_temp_1 >= 0)
    {
        x_temp_2 = x_temp_1 + (y_temp_1>>8);
        y_temp_1 -= (x_temp_1>>8);
        z_temp += 2047;
    }
    else
    {
        x_temp_2 = x_temp_1 - (y_temp_1>>8);
        y_temp_1 += (x_temp_1>>8);
        z_temp -= 2047;
    }
    x_temp_1 = x_temp_2;

    if (y_temp_1 >= 0)
    {
        x_temp_2 = x_temp_1 + (y_temp_1>>9);
        y_temp_1 -= (x_temp_1>>9);
        z_temp += 1023;
    }
    else
    {
        x_temp_2 = x_temp_1 - (y_temp_1>>9);
        y_temp_1 += (x_temp_1>>9);
        z_temp -= 1023;
    }
    x_temp_1 = x_temp_2;

    if (y_temp_1 >= 0)
    {
        x_temp_2 = x_temp_1 + (y_temp_1>>10);
        y_temp_1 -= (x_temp_1>>10);
        z_temp += 511;
    }
    else
    {
        x_temp_2 = x_temp_1 - (y_temp_1>>10);
        y_temp_1 += (x_temp_1>>10);
        z_temp -= 511;
    }
    x_temp_1 = x_temp_2;

    if (y_temp_1 >= 0)
    {
        x_temp_2 = x_temp_1 + (y_temp_1>>11);
        y_temp_1 -= (x_temp_1>>11);
        z_temp += 255;
    }
    else
    {
        x_temp_2 = x_temp_1 - (y_temp_1>>11);
        y_temp_1 += (x_temp_1>>11);
        z_temp -= 255;
    }
    x_temp_1 = x_temp_2;

    if (y_temp_1 >= 0)
    {
        x_temp_2 = x_temp_1 + (y_temp_1>>12);
        y_temp_1 -= (x_temp_1>>12);
        z_temp += 127;
    }
    else
    {
        x_temp_2 = x_temp_1 - (y_temp_1>>12);
        y_temp_1 += (x_temp_1>>12);
        z_temp -= 127;
    }
    x_temp_1 = x_temp_2;

    if (y_temp_1 >= 0)
    {
        x_temp_2 = x_temp_1 + (y_temp_1>>13);
        y_temp_1 -= (x_temp_1>>13);
        z_temp += 63;
    }
    else
    {
        x_temp_2 = x_temp_1 - (y_temp_1>>13);
        y_temp_1 += (x_temp_1>>13);
        z_temp -= 63;
    }
    x_temp_1 = x_temp_2;

    if (y_temp_1 >= 0)
    {
        x_temp_2 = x_temp_1 + (y_temp_1>>14);
        y_temp_1 -= (x_temp_1>>14);
        z_temp += 31;
    }
    else
    {
        x_temp_2 = x_temp_1 - (y_temp_1>>14);
        y_temp_1 += (x_temp_1>>14);
        z_temp -= 31;
    }
    x_temp_1 = x_temp_2;

    if (y_temp_1 >= 0)
    {
        x_temp_2 = x_temp_1 + (y_temp_1>>15);
        y_temp_1 -= (x_temp_1>>15);
        z_temp += 15;
    }
    else
    {
        x_temp_2 = x_temp_1 - (y_temp_1>>15);
        y_temp_1 += (x_temp_1>>15);
        z_temp -= 15;
    }
    x_temp_1 = x_temp_2;

    if (y_temp_1 >= 0)
    {
        x_temp_2 = x_temp_1 + (y_temp_1>>16);
        y_temp_1 -= (x_temp_1>>16);
        z_temp += 7;
    }
    else
    {
        x_temp_2 = x_temp_1 - (y_temp_1>>16);
        y_temp_1 += (x_temp_1>>16);
        z_temp -= 7;
    }
    x_temp_1 = x_temp_2;

    if (y_temp_1 >= 0)
    {
        x_temp_2 = x_temp_1 + (y_temp_1>>17);
        y_temp_1 -= (x_temp_1>>17);
        z_temp += 3;
    }
    else
    {
        x_temp_2 = x_temp_1 - (y_temp_1>>17);
        y_temp_1 += (x_temp_1>>17);
        z_temp -= 3;
    }
    x_temp_1 = x_temp_2;

    if (y_temp_1 >= 0)
    {
        x_temp_2 = x_temp_1 + (y_temp_1>>18);
        y_temp_1 -= (x_temp_1>>18);
        z_temp += 1;
    }
    else
    {
        x_temp_2 = x_temp_1 - (y_temp_1>>18);
        y_temp_1 += (x_temp_1>>18);
        z_temp -= 1;
    }
    x_temp_1 = x_temp_2;

    *x_o = x_temp_1;
    *z_o = z_temp;

    return;
}

/*
* This function implements the CORDIC algorithm in 
* rotation mode using fixed point arithmetic.
* It calculates the output to 16 bits of precision,
* where 15 bits represent the magnitude, and
* the final bit represents the sign.
* The input argument z represent the input angle.
* The output is stored in x_o, y_o and z_o
* (_o for output). x_o and y_o represent cos(z), sin(z)
* respectively.
*/
void cordic_opt3b_rotation(register int32_t z,
                           register int32_t* restrict x_o,
                           register int32_t* restrict y_o)
{
    register int32_t x_temp_1, y_temp_1, z_temp;
    register int32_t x_temp_2;
    register int32_t i, sign;

    x_temp_1 = 318375;
    y_temp_1 = 0;
    z_temp = z;

    if (z_temp < 0)
    {
        x_temp_2 = x_temp_1 + (y_temp_1);
        y_temp_1 -= (x_temp_1);
        z_temp += 411774;
    } 
    else
    {
        x_temp_2 = x_temp_1 - (y_temp_1);
        y_temp_1 += (x_temp_1);
        z_temp -= 411774;
    }
    x_temp_1 = x_temp_2;

    if (z_temp < 0)
    {
        x_temp_2 = x_temp_1 + (y_temp_1>>1);
        y_temp_1 -= (x_temp_1>>1);
        z_temp += 243084;
    }
    else
    {
        x_temp_2 = x_temp_1 - (y_temp_1>>1);
        y_temp_1 += (x_temp_1>>1);
        z_temp -= 243084;
    }
    x_temp_1 = x_temp_2;

    if (z_temp < 0)
    {
        x_temp_2 = x_temp_1 + (y_temp_1>>2);
        y_temp_1 -= (x_temp_1>>2);
        z_temp += 128439;
    }
    else
    {
        x_temp_2 = x_temp_1 - (y_temp_1>>2);
        y_temp_1 += (x_temp_1>>2);
        z_temp -= 128439;
    }
    x_temp_1 = x_temp_2;

    if (z_temp < 0)
    {
        x_temp_2 = x_temp_1 + (y_temp_1>>3);
        y_temp_1 -= (x_temp_1>>3);
        z_temp += 65197;
    }
    else
    {
        x_temp_2 = x_temp_1 - (y_temp_1>>3);
        y_temp_1 += (x_temp_1>>3);
        z_temp -= 65197;
    }
    x_temp_1 = x_temp_2;

    if (z_temp < 0)
    {
        x_temp_2 = x_temp_1 + (y_temp_1>>4);
        y_temp_1 -= (x_temp_1>>4);
        z_temp += 32725;
    }
    else
    {
        x_temp_2 = x_temp_1 - (y_temp_1>>4);
        y_temp_1 += (x_temp_1>>4);
        z_temp -= 32725;
    }
    x_temp_1 = x_temp_2;

    if (z_temp < 0)
    {
        x_temp_2 = x_temp_1 + (y_temp_1>>5);
        y_temp_1 -= (x_temp_1>>5);
        z_temp += 16378;
    }
    else
    {
        x_temp_2 = x_temp_1 - (y_temp_1>>5);
        y_temp_1 += (x_temp_1>>5);
        z_temp -= 16378;
    }
    x_temp_1 = x_temp_2;

    if (z_temp < 0)
    {
        x_temp_2 = x_temp_1 + (y_temp_1>>6);
        y_temp_1 -= (x_temp_1>>6);
        z_temp += 8191;
    }
    else
    {
        x_temp_2 = x_temp_1 - (y_temp_1>>6);
        y_temp_1 += (x_temp_1>>6);
        z_temp -= 8191;
    }
    x_temp_1 = x_temp_2;

    if (z_temp < 0)
    {
        x_temp_2 = x_temp_1 + (y_temp_1>>7);
        y_temp_1 -= (x_temp_1>>7);
        z_temp += 4095;
    }
    else
    {
        x_temp_2 = x_temp_1 - (y_temp_1>>7);
        y_temp_1 += (x_temp_1>>7);
        z_temp -= 4095;
    }
    x_temp_1 = x_temp_2;

    if (z_temp < 0)
    {
        x_temp_2 = x_temp_1 + (y_temp_1>>8);
        y_temp_1 -= (x_temp_1>>8);
        z_temp += 2047;
    }
    else
    {
        x_temp_2 = x_temp_1 - (y_temp_1>>8);
        y_temp_1 += (x_temp_1>>8);
        z_temp -= 2047;
    }
    x_temp_1 = x_temp_2;

    if (z_temp < 0)
    {
        x_temp_2 = x_temp_1 + (y_temp_1>>9);
        y_temp_1 -= (x_temp_1>>9);
        z_temp += 1023;
    }
    else
    {
        x_temp_2 = x_temp_1 - (y_temp_1>>9);
        y_temp_1 += (x_temp_1>>9);
        z_temp -= 1023;
    }
    x_temp_1 = x_temp_2;

    if (z_temp < 0)
    {
        x_temp_2 = x_temp_1 + (y_temp_1>>10);
        y_temp_1 -= (x_temp_1>>10);
        z_temp += 511;
    }
    else
    {
        x_temp_2 = x_temp_1 - (y_temp_1>>10);
        y_temp_1 += (x_temp_1>>10);
        z_temp -= 511;
    }
    x_temp_1 = x_temp_2;
    
    if (z_temp < 0)
    {
        x_temp_2 = x_temp_1 + (y_temp_1>>11);
        y_temp_1 -= (x_temp_1>>11);
        z_temp += 255;
    }
    else
    {
        x_temp_2 = x_temp_1 - (y_temp_1>>11);
        y_temp_1 += (x_temp_1>>11);
        z_temp -= 255;
    }
    x_temp_1 = x_temp_2;

    if (z_temp < 0)
    {
        x_temp_2 = x_temp_1 + (y_temp_1>>12);
        y_temp_1 -= (x_temp_1>>12);
        z_temp += 127;
    }
    else
    {
        x_temp_2 = x_temp_1 - (y_temp_1>>12);
        y_temp_1 += (x_temp_1>>12);
        z_temp -= 127;
    }
    x_temp_1 = x_temp_2;

    if (z_temp < 0)
    {
        x_temp_2 = x_temp_1 + (y_temp_1>>13);
        y_temp_1 -= (x_temp_1>>13);
        z_temp += 63;
    }
    else
    {
        x_temp_2 = x_temp_1 - (y_temp_1>>13);
        y_temp_1 += (x_temp_1>>13);
        z_temp -= 63;
    }
    x_temp_1 = x_temp_2;

    if (z_temp < 0)
    {
        x_temp_2 = x_temp_1 + (y_temp_1>>14);
        y_temp_1 -= (x_temp_1>>14);
        z_temp += 31;
    }
    else
    {
        x_temp_2 = x_temp_1 - (y_temp_1>>14);
        y_temp_1 += (x_temp_1>>14);
        z_temp -= 31;
    }
    x_temp_1 = x_temp_2;

    if (z_temp < 0)
    {
        x_temp_2 = x_temp_1 + (y_temp_1>>15);
        y_temp_1 -= (x_temp_1>>15);
        z_temp += 15;
    }
    else
    {
        x_temp_2 = x_temp_1 - (y_temp_1>>15);
        y_temp_1 += (x_temp_1>>15);
        z_temp -= 15;
    }
    x_temp_1 = x_temp_2;

    if (z_temp < 0)
    {
        x_temp_2 = x_temp_1 + (y_temp_1>>16);
        y_temp_1 -= (x_temp_1>>16);
        z_temp += 7;
    }
    else
    {
        x_temp_2 = x_temp_1 - (y_temp_1>>16);
        y_temp_1 += (x_temp_1>>16);
        z_temp -= 7;
    }
    x_temp_1 = x_temp_2;

    if (z_temp < 0)
    {
        x_temp_2 = x_temp_1 + (y_temp_1>>17);
        y_temp_1 -= (x_temp_1>>17);
        z_temp += 3;
    }
    else
    {
        x_temp_2 = x_temp_1 - (y_temp_1>>17);
        y_temp_1 += (x_temp_1>>17);
        z_temp -= 3;
    }
    x_temp_1 = x_temp_2;

    if (z_temp < 0)
    {
        x_temp_2 = x_temp_1 + (y_temp_1>>18);
        y_temp_1 -= (x_temp_1>>18);
        z_temp += 1;
    }
    else
    {
        x_temp_2 = x_temp_1 - (y_temp_1>>18);
        y_temp_1 += (x_temp_1>>18);
        z_temp -= 1;
    }
    x_temp_1 = x_temp_2;

    *x_o = x_temp_1;
    *y_o = y_temp_1; 

    return;
}
