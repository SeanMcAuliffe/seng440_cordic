#ifndef OPT1_CORDIC_H
#define OPT1_CORDIC_H

// ---------------------------- API Functions -------------------------------------
void cordic_opt1_vectoring(int32_t, int32_t, int32_t* restrict, int32_t* restrict);
void cordic_opt1_rotation(int32_t, int32_t* restrict, int32_t* restrict);

#endif /* OPT1_CORDIC_H */
