
void cordic_V_fixed_point(int x_temp_1, int y_temp_1, int *z) {

    int z_table[15] = {25735, 15192, 8027, 4074, 2045, 1023,
                    511, 255, 127, 63, 31, 15, 7, 3, 1};

    register int z_temp;
    register int x_temp_2, y_temp_2;
    register int i;

    // x_temp_1 = *x;
    // y_temp_1 = *y;
    z_temp = 0;

    for (i^=i; !(i&15); i+=1) {
        if (y_temp_1 > 0) {
            x_temp_2 = x_temp_1 + (y_temp_1 >> i);
            y_temp_2 = y_temp_1 - (x_temp_1 >> i);
            z_temp += z_table[i];
        } else {
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