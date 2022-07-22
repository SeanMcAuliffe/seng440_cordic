#include <stdint.h>

// void cordic_V_fixed_point(int *x, int* y, int *z) {

//     // static int z_table[15] = {25735, 15192, 8027, 4074, 2045, 1023,
//     //                 511, 255, 127, 63, 31, 15, 7, 3, 1};


// static int32_t z_table[23] = {6588397, 3889358, 2055029, 1043165, 523606, 262058,
//                                 131061, 65534, 32767, 16383, 8191, 4095, 2047, 1023,
//                                  511, 255, 127, 63, 31, 15, 7, 3, 1}

//     // static int z_table[16] = {0, 1, 3, 7, 15, 31, 63,
//     //                 127, 255, 511, 1023, 2045, 4074, 8027, 15192, 25735};              

//     register int x_temp_1, y_temp_1, z_temp;
//     register int x_temp_2, y_temp_2;
//     register int i;

//     x_temp_1 = *x;
//     y_temp_1 = *y;
//     z_temp = 0;

static int32_t z_table[23] = {6588397, 3889358, 2055029, 1043165, 523606, 262058,
                                131061, 65534, 32767, 16383, 8191, 4095, 2047, 1023,
                                 511, 255, 127, 63, 31, 15, 7, 3, 1};


// void cordic_V_fixed_point(int32_t *x, int32_t *y, int32_t *z) {
//     int32_t x_temp_1, y_temp_1, z_temp;
//     int32_t x_temp_2, y_temp_2;
//     int32_t i;

//     x_temp_1 = *x;
//     y_temp_1 = *y;
//     z_temp = 0;

//     for (i=0; i<23; i++) {
//         if (y_temp_1 > 0) {
//             // Rotate downwards by arctan(2^-i)
//             x_temp_2 = x_temp_1 + (y_temp_1 >> i);
//             y_temp_2 = y_temp_1 - (x_temp_1 >> i);
//             z_temp += z_table[i];
//         } else {
//             // Rotate upwards by arctan(2^-i)
//             x_temp_2 = x_temp_1 - (y_temp_1 >> i);
//             y_temp_2 = y_temp_1 + (x_temp_1 >> i);
//             z_temp -= z_table[i];
//         }

//         x_temp_1 = x_temp_2;
//         y_temp_1 = y_temp_2;
//     }

//     *x = x_temp_1;
//     *y = y_temp_1;
//     *z = z_temp;
// }

//    for (i^=i; (i^14); i+=2) {
        if (y_temp_1 > 0) {
            x_temp_2 = x_temp_1 + y_temp_1;
            y_temp_2 = y_temp_1 - x_temp_1;
            z_temp += z_table[0];
        } else {
            x_temp_2 = x_temp_1 - y_temp_1;
            y_temp_2 = y_temp_1 + x_temp_1;
            z_temp -= z_table[0];
        }

        x_temp_1 = x_temp_2;
        y_temp_1 = y_temp_2;

        if (y_temp_1> 0) {
            x_temp_2 = x_temp_1 + (y_temp_1 >> 1);
            y_temp_2 = y_temp_1 - (x_temp_1 >> 1);
            z_temp += z_table[1];
        } else {
            x_temp_2 = x_temp_1 - (y_temp_1 >> 1);
            y_temp_2 = y_temp_1 + (x_temp_1 >> 1);
            z_temp -= z_table[1];
        }

        x_temp_1 = x_temp_2;
        y_temp_1 = y_temp_2;

        if (y_temp_1> 0) {
            x_temp_2 = x_temp_1 + (y_temp_1 >> 2);
            y_temp_2 = y_temp_1 - (x_temp_1 >> 2);
            z_temp += z_table[2];
        } else {
            x_temp_2 = x_temp_1 - (y_temp_1 >> 2);
            y_temp_2 = y_temp_1 + (x_temp_1 >> 2);
            z_temp -= z_table[2];
        }

        x_temp_1 = x_temp_2;
        y_temp_1 = y_temp_2;

        if (y_temp_1> 0) {
            x_temp_2 = x_temp_1 + (y_temp_1 >> 3);
            y_temp_2 = y_temp_1 - (x_temp_1 >> 3);
            z_temp += z_table[3];
        } else {
            x_temp_2 = x_temp_1 - (y_temp_1 >> 3);
            y_temp_2 = y_temp_1 + (x_temp_1 >> 3);
            z_temp -= z_table[3];
        }

        x_temp_1 = x_temp_2;
        y_temp_1 = y_temp_2;

        if (y_temp_1> 0) {
            x_temp_2 = x_temp_1 + (y_temp_1 >> 4);
            y_temp_2 = y_temp_1 - (x_temp_1 >> 4);
            z_temp += z_table[4];
        } else {
            x_temp_2 = x_temp_1 - (y_temp_1 >> 4);
            y_temp_2 = y_temp_1 + (x_temp_1 >> 4);
            z_temp -= z_table[4];
        }

        x_temp_1 = x_temp_2;
        y_temp_1 = y_temp_2;

        if (y_temp_1> 0) {
            x_temp_2 = x_temp_1 + (y_temp_1 >> 5);
            y_temp_2 = y_temp_1 - (x_temp_1 >> 5);
            z_temp += z_table[5];
        } else {
            x_temp_2 = x_temp_1 - (y_temp_1 >> 5);
            y_temp_2 = y_temp_1 + (x_temp_1 >> 5);
            z_temp -= z_table[5];
        }

        x_temp_1 = x_temp_2;
        y_temp_1 = y_temp_2;

        if (y_temp_1> 0) {
            x_temp_2 = x_temp_1 + (y_temp_1 >> 6);
            y_temp_2 = y_temp_1 - (x_temp_1 >> 6);
            z_temp += z_table[6];
        } else {
            x_temp_2 = x_temp_1 - (y_temp_1 >> 6);
            y_temp_2 = y_temp_1 + (x_temp_1 >> 6);
            z_temp -= z_table[6];
        }

        x_temp_1 = x_temp_2;
        y_temp_1 = y_temp_2;

        if (y_temp_1> 0) {
            x_temp_2 = x_temp_1 + (y_temp_1 >> 7);
            y_temp_2 = y_temp_1 - (x_temp_1 >> 7);
            z_temp += z_table[7];
        } else {
            x_temp_2 = x_temp_1 - (y_temp_1 >> 7);
            y_temp_2 = y_temp_1 + (x_temp_1 >> 7);
            z_temp -= z_table[7];
        }

        x_temp_1 = x_temp_2;
        y_temp_1 = y_temp_2;

        if (y_temp_1> 0) {
            x_temp_2 = x_temp_1 + (y_temp_1 >> 8);
            y_temp_2 = y_temp_1 - (x_temp_1 >> 8);
            z_temp += z_table[8];
        } else {
            x_temp_2 = x_temp_1 - (y_temp_1 >> 8);
            y_temp_2 = y_temp_1 + (x_temp_1 >> 8);
            z_temp -= z_table[8];
        }

        x_temp_1 = x_temp_2;
        y_temp_1 = y_temp_2;

        if (y_temp_1> 0) {
            x_temp_2 = x_temp_1 + (y_temp_1 >> 9);
            y_temp_2 = y_temp_1 - (x_temp_1 >> 9);
            z_temp += z_table[9];
        } else {
            x_temp_2 = x_temp_1 - (y_temp_1 >> 9);
            y_temp_2 = y_temp_1 + (x_temp_1 >> 9);
            z_temp -= z_table[9];
        }

        x_temp_1 = x_temp_2;
        y_temp_1 = y_temp_2;

        if (y_temp_1> 0) {
            x_temp_2 = x_temp_1 + (y_temp_1 >> 10);
            y_temp_2 = y_temp_1 - (x_temp_1 >> 10);
            z_temp += z_table[10];
        } else {
            x_temp_2 = x_temp_1 - (y_temp_1 >> 10);
            y_temp_2 = y_temp_1 + (x_temp_1 >> 10);
            z_temp -= z_table[10];
        }

        x_temp_1 = x_temp_2;
        y_temp_1 = y_temp_2;

        if (y_temp_1> 0) {
            x_temp_2 = x_temp_1 + (y_temp_1 >> 11);
            y_temp_2 = y_temp_1 - (x_temp_1 >> 11);
            z_temp += z_table[11];
        } else {
            x_temp_2 = x_temp_1 - (y_temp_1 >> 11);
            y_temp_2 = y_temp_1 + (x_temp_1 >> 11);
            z_temp -= z_table[11];
        }

        x_temp_1 = x_temp_2;
        y_temp_1 = y_temp_2;

        if (y_temp_1> 0) {
            x_temp_2 = x_temp_1 + (y_temp_1 >> 12);
            y_temp_2 = y_temp_1 - (x_temp_1 >> 12);
            z_temp += z_table[12];
        } else {
            x_temp_2 = x_temp_1 - (y_temp_1 >> 12);
            y_temp_2 = y_temp_1 + (x_temp_1 >> 12);
            z_temp -= z_table[12];
        }

        x_temp_1 = x_temp_2;
        y_temp_1 = y_temp_2;

        if (y_temp_1> 0) {
            x_temp_2 = x_temp_1 + (y_temp_1 >> 13);
            y_temp_2 = y_temp_1 - (x_temp_1 >> 13);
            z_temp += z_table[13];
        } else {
            x_temp_2 = x_temp_1 - (y_temp_1 >> 13);
            y_temp_2 = y_temp_1 + (x_temp_1 >> 13);
            z_temp -= z_table[13];
        }

        x_temp_1 = x_temp_2;
        y_temp_1 = y_temp_2;

        if (y_temp_1> 0) {
            x_temp_2 = x_temp_1 + (y_temp_1 >> 14);
            y_temp_2 = y_temp_1 - (x_temp_1 >> 14);
            z_temp += z_table[14];
        } else {
            x_temp_2 = x_temp_1 - (y_temp_1 >> 14);
            y_temp_2 = y_temp_1 + (x_temp_1 >> 14);
            z_temp -= z_table[14];
        }

        x_temp_1 = x_temp_2;
        y_temp_1 = y_temp_2;

    //}

    *z = z_temp;
}

//   int z_table[15] = {25735, 15192, 8027, 4074, 2045, 1023,
//                     511, 255, 127, 63, 31, 15, 7, 3, 1};

//     register int z_temp;
//     register int x_temp_2, y_temp_2;
//     register int i;

//     // x_temp_1 = *x;
//     // y_temp_1 = *y;
//     z_temp = 0;

//     for (i^=i; !(i&15); i+=1) {
//         if (y_temp_1 > 0) {
//             x_temp_2 = x_temp_1 + (y_temp_1 >> i);
//             y_temp_2 = y_temp_1 - (x_temp_1 >> i);
//             z_temp += z_table[i];
//         } else {
//             x_temp_2 = x_temp_1 - (y_temp_1 >> i);
//             y_temp_2 = y_temp_1 + (x_temp_1 >> i);
//             z_temp -= z_table[i];
//         }

//         x_temp_1 = x_temp_2;
//         y_temp_1 = y_temp_2;
//     }

//     // *x = x_temp_1;
//     // *y = y_temp_1;
            //*z = z_temp;