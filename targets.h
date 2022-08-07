#ifndef TARGETS_H
#define TARGETS_H

#include <stdint.h>

void cordic_naive_vectoring(int32_t, int32_t, int32_t* , int32_t*, int32_t* );
void cordic_naive_rotation(int32_t, int32_t *, int32_t *, int32_t *);

void cordic_opt1_vectoring(int32_t, int32_t, int32_t* restrict, int32_t* restrict);
void cordic_opt1_rotation(int32_t, int32_t* restrict, int32_t* restrict);

void cordic_opt2_vectoring(int32_t, int32_t, int32_t* restrict, int32_t* restrict);
void cordic_opt2_rotation(int32_t, int32_t* restrict, int32_t* restrict);

#endif /* TARGETS_H */
