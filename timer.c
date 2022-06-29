#include <time.h>
#include "cordic_V_fixed_point.c"
#include "testbench_alt.c"

int main(void) {

    double x_d = 0.85;
    double y_d = 0.76;
    double z_d;

    int x_i = 27852;
    int y_i = 24903;
    int z_i;

    clock_t timebench_begin;
    clock_t timebench_end;

    clock_t cordic_begin;
    clock_t cordic_end;
    int i;
    int k;

    // Time the testbench
    timebench_begin = clock();
    for (k = 0; k < 1000; k++) {
        for (i = 0; i < 10000; i++) {
            testbench(x_d, y_d, &z_d); //z_d = atan(y_d / x_d);//
        }
    }
    timebench_end = clock();
    int time_testbench = (timebench_end - timebench_begin) / 1000;
    printf("Testbench took %d, z_d = %f\n", time_testbench, z_d);

    // Time CORDIC
    cordic_begin = clock();
    for (k =0; k < 1000; k++) {
        for (i = 0; i < 10000; i++) {
            cordic_V_fixed_point(&x_i, &y_i, &z_i);
        }
    }
    cordic_end = clock();
    int time_cordic = (cordic_end - cordic_begin) / 1000;
    printf("Cordic took %d, z_i = %i\n", time_cordic, z_i);

    return 0;
}