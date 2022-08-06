#include <stdint.h>

/* Truncate a int32_t to 16 bits using Von Neumann rounding 
*  This function works in the case that the input x is not negative.
*/
int16_t von_neumann_round(int32_t x) {
    int8_t significant = 0;
    int8_t set_lsb = 0;
    int8_t shift;

    for (int k = 31; k >= 0; k--) {
        if (x & (1 << k)) {
            significant = k;
            break;
        }
    }
    shift = significant - 16;
    for (int k = 0; k < shift; k++) {
        if (x & 1) {
            set_lsb = 1;
        }
        x >> 1;
    }
    if (set_lsb) {
        x |= 1;
    }

    return (int16_t) x;
}