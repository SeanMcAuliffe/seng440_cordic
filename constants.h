#ifndef CONSTANTS
#define CONSTANTS

#include <stdint.h>
/*
* We chose this scale factor because it produces 16 accurate
* bits in CORDIC the output (15 magnitude, 1 sign). These accurate
* bits agree with  precomputed reference values during testing. To
* achieve this 16-bit accuracy, you need to remove the 4 least
* significant its of the result. Cast the result to a 16-bit integer.
*/
const int32_t SCALE_FACTOR = (1 << 19);

/* Integer image of the lim(n->inf) K(n), represented in 16 bits.
* lim(n->inf) K(n) = 0.6072529350088812561694
*/
const int32_t K_SCALE = 318375;

/*
* To assess the performance imrpovement of the CORDIC fixed-point 
* implementation over floating-point emulation, and to gauge
* the performance improvement of each successive round of optmizations
* we run the CORDIC implementation on many iterations, over many trials.
* The number of cycles taken is averaged over the number of trials to
* reduce the effects of noise in the measurement due to operating system
* scheduling, and other stochastic factors.
*/
const int32_t NUM_ITERATIONS = 10000;
const int32_t NUM_TRIALS = 1000;


/*
* -------------------   Inputs   ----------------------------
* Edit these values here, and then recompile, to test the
* CORDIC implementation on different inputs.
* -----------------------------------------------------------
*/
const double X_VECTORING_MODE = 0.707106;
const double Y_VECTORING_MODE = 0.707106;
const double Z_ROTATION_MODE = 0.785398;

#endif
