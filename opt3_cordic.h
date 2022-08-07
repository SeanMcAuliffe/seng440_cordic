#ifndef OPT3_CORDIC_H
#define OPT3_CORDIC_H

// ---------------------------- API Functions -------------------------------------
void cordic_opt3_vectoring(int32_t, int32_t, int32_t* restrict, int32_t* restrict);
void cordic_opt3_rotation(int32_t, int32_t* restrict, int32_t* restrict);

#endif /* OPT3_CORDIC_H */
