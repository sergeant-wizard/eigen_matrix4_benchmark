vshufps $0, %xmm1, %xmm1, %xmm1
vmovaps 64(%rsp), %xmm3
vshufps $0, %xmm0, %xmm0, %xmm0
vshufps $0, %xmm7, %xmm7, %xmm7
vmulps  %xmm1, %xmm3, %xmm1
vmovaps 80(%rsp), %xmm2
vshufps $0, %xmm5, %xmm5, %xmm5
vshufps $0, %xmm15, %xmm15, %xmm15
vshufps $0, %xmm11, %xmm11, %xmm11
vfmadd132ps     %xmm2, %xmm1, %xmm0
vmovaps 96(%rsp), %xmm1
vmulps  %xmm7, %xmm3, %xmm7
vshufps $0, %xmm4, %xmm4, %xmm4
vfmadd132ps     %xmm1, %xmm0, %xmm5
vmovaps 112(%rsp), %xmm0
vmulps  %xmm11, %xmm3, %xmm11
vshufps $0, %xmm6, %xmm6, %xmm6
vfmadd132ps     %xmm0, %xmm5, %xmm4
vmulps  %xmm15, %xmm3, %xmm3
vbroadcastss    60(%rsp), %xmm5
vmovaps %xmm4, 256(%rsp)
vfmadd132ps     %xmm2, %xmm7, %xmm6
vfmadd132ps     %xmm1, %xmm6, %xmm5
vshufps $0, %xmm10, %xmm10, %xmm10
vshufps $0, %xmm9, %xmm9, %xmm9
vshufps $0, %xmm8, %xmm8, %xmm8
vbroadcastss    56(%rsp), %xmm4
vshufps $0, %xmm14, %xmm14, %xmm14
vfmadd132ps     %xmm2, %xmm11, %xmm10
vshufps $0, %xmm13, %xmm13, %xmm13
vfmadd132ps     %xmm1, %xmm10, %xmm9
vshufps $0, %xmm12, %xmm12, %xmm12
vfmadd132ps     %xmm0, %xmm5, %xmm4
vfmadd132ps     %xmm0, %xmm9, %xmm8
vmovaps %xmm4, 272(%rsp)
vfmadd132ps     %xmm2, %xmm3, %xmm14
vfmadd132ps     %xmm1, %xmm14, %xmm13
vmovaps %xmm8, 288(%rsp)
vfmadd132ps     %xmm0, %xmm13, %xmm12
vmovaps %xmm12, 304(%rsp)
vmovaps 256(%rsp), %ymm0
vmovaps %ymm0, 192(%rsp)
vmovaps 288(%rsp), %ymm0
vmovaps %ymm0, 224(%rsp)
