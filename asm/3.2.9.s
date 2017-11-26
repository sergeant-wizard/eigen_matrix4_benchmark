vmovaps 144(%rsp), %xmm3
vmovaps 160(%rsp), %xmm2
vmulps  %xmm13, %xmm3, %xmm0
vmovaps 176(%rsp), %xmm1
vmulps  %xmm12, %xmm2, %xmm5
vmulps  96(%rsp), %xmm2, %xmm6
vmulps  32(%rsp), %xmm2, %xmm7
vaddps  %xmm0, %xmm5, %xmm5
vmulps  %xmm14, %xmm1, %xmm0
vmulps  %xmm8, %xmm2, %xmm2
vaddps  %xmm5, %xmm0, %xmm5
vmovaps 192(%rsp), %xmm0
vmulps  %xmm15, %xmm0, %xmm4
vaddps  %xmm5, %xmm4, %xmm5
vmulps  112(%rsp), %xmm3, %xmm4
vmovaps %xmm5, 208(%rsp)
vaddps  %xmm4, %xmm6, %xmm4
vmulps  %xmm10, %xmm1, %xmm6
vaddps  %xmm4, %xmm6, %xmm4
vmulps  %xmm11, %xmm0, %xmm6
vaddps  %xmm4, %xmm6, %xmm4
vmulps  48(%rsp), %xmm3, %xmm6
vmulps  %xmm9, %xmm3, %xmm3
vmovaps %xmm4, 224(%rsp)
vaddps  %xmm6, %xmm7, %xmm6
vmulps  64(%rsp), %xmm1, %xmm7
vaddps  %xmm3, %xmm2, %xmm3
vmulps  (%rsp), %xmm1, %xmm1
vaddps  %xmm6, %xmm7, %xmm6
vmulps  80(%rsp), %xmm0, %xmm7
vaddps  %xmm3, %xmm1, %xmm3
vmulps  16(%rsp), %xmm0, %xmm0
vaddps  %xmm6, %xmm7, %xmm6
vaddps  %xmm3, %xmm0, %xmm3
vmovaps %xmm6, 240(%rsp)
vmovaps %xmm3, 256(%rsp)
