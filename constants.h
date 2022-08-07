#ifndef CONSTANTS_H
#define CONSTANTS_H
#define public

#include <stdint.h>

/*
* We chose this scale factor because it produces 16 accurate
* bits in CORDIC the output (15 magnitude, 1 sign). These accurate
* bits agree with  precomputed reference values during testing. To
* achieve this 16-bit accuracy, you need to remove the 4 least
* significant its of the result. Cast the result to a 16-bit integer.
*/
static const int32_t SCALE_FACTOR = (1 << 19);

/* Integer image of the lim(n->inf) K(n), represented in 16 bits.
* lim(n->inf) K(n) = 0.6072529350088812561694
*/
static const int32_t K_SCALE = 318375;
static int32_t K_FACTOR = 318375;

static const int32_t z_table[19] = {411774, 243084, 128439, 65197, 32725, 16378,
                             8191, 4095, 2047, 1023, 511, 255, 127, 63, 31,
                             15, 7, 3, 1};

static const int32_t table_offset = sizeof(int32_t);

/*
* To assess the performance imrpovement of the CORDIC fixed-point 
* implementation over floating-point emulation, and to gauge
* the performance improvement of each successive round of optmizations
* we run the CORDIC implementation on many iterations, over many trials.
* The number of cycles taken is averaged over the number of trials to
* reduce the effects of noise in the measurement due to operating system
* scheduling, and other stochastic factors.
*/
static const int32_t NUM_ITERATIONS = 1000;
static const int32_t NUM_TRIALS = 1000;

/*
* -------------------   Inputs   ----------------------------
* Edit these values here, and then recompile, to test the
* CORDIC implementation on different inputs.
* -----------------------------------------------------------
*/
static const double X_VECTORING_MODE = 0.707106;
static const double Y_VECTORING_MODE = 0.707106;
static const double Z_ROTATION_MODE = 0.785398;

#endif /* CONSTAINTS_H */
