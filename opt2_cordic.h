#ifndef OPT2_CORDIC_H
#define OPT2_CORDIC_H

// ---------------------------- API Functions -------------------------------------
void cordic_opt2_vectoring(int32_t, int32_t, int32_t* restrict, int32_t* restrict);
void cordic_opt2_rotation(int32_t, int32_t* restrict, int32_t* restrict);

#endif /* OPT2_CORDIC_H */
