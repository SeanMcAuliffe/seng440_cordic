#ifndef OPT3B_CORDIC_H
#define OPT3B_CORDIC_H

// ---------------------------- API Functions --------------------------------------
void cordic_opt3b_vectoring(int32_t, int32_t, int32_t* restrict, int32_t* restrict);
void cordic_opt3b_rotation(int32_t, int32_t* restrict, int32_t* restrict);

#endif /* OPT3B_CORDIC_H */
