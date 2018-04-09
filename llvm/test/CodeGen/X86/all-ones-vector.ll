; NOTE: Assertions have been autogenerated by utils/update_llc_test_checks.py
; RUN: llc < %s -mtriple=i386-unknown -mattr=+sse2 | FileCheck %s --check-prefix=X32-SSE
; RUN: llc < %s -mtriple=i386-unknown -mattr=+avx  | FileCheck %s --check-prefix=X32-AVX --check-prefix=X32-AVX1
; RUN: llc < %s -mtriple=i386-unknown -mattr=+avx2 | FileCheck %s --check-prefix=X32-AVX --check-prefix=X32-AVX256 --check-prefix=X32-AVX2
; RUN: llc < %s -mtriple=i386-unknown -mcpu=knl | FileCheck %s --check-prefix=X32-AVX --check-prefix=X32-AVX256 --check-prefix=X32-AVX512 --check-prefix=X32-KNL
; RUN: llc < %s -mtriple=i386-unknown -mcpu=skx | FileCheck %s --check-prefix=X32-AVX --check-prefix=X32-AVX256 --check-prefix=X32-AVX512 --check-prefix=X32-SKX
; RUN: llc < %s -mtriple=x86_64-unknown -mattr=+sse2 | FileCheck %s --check-prefix=X64-SSE
; RUN: llc < %s -mtriple=x86_64-unknown -mattr=+avx  | FileCheck %s --check-prefix=X64-AVX --check-prefix=X64-AVX1
; RUN: llc < %s -mtriple=x86_64-unknown -mattr=+avx2 | FileCheck %s --check-prefix=X64-AVX --check-prefix=X64-AVX256 --check-prefix=X64-AVX2
; RUN: llc < %s -mtriple=x86_64-unknown -mcpu=knl | FileCheck %s --check-prefix=X64-AVX --check-prefix=X64-AVX256 --check-prefix=X64-AVX512 --check-prefix=X64-KNL
; RUN: llc < %s -mtriple=x86_64-unknown -mcpu=skx | FileCheck %s --check-prefix=X64-AVX --check-prefix=X64-AVX256 --check-prefix=X64-AVX512 --check-prefix=X64-SKX

define <16 x i8> @coo() nounwind {
; X32-SSE-LABEL: coo:
; X32-SSE:       # BB#0:
; X32-SSE-NEXT:    pcmpeqd %xmm0, %xmm0
; X32-SSE-NEXT:    retl
;
; X32-AVX-LABEL: coo:
; X32-AVX:       # BB#0:
; X32-AVX-NEXT:    vpcmpeqd %xmm0, %xmm0, %xmm0
; X32-AVX-NEXT:    retl
;
; X64-SSE-LABEL: coo:
; X64-SSE:       # BB#0:
; X64-SSE-NEXT:    pcmpeqd %xmm0, %xmm0
; X64-SSE-NEXT:    retq
;
; X64-AVX-LABEL: coo:
; X64-AVX:       # BB#0:
; X64-AVX-NEXT:    vpcmpeqd %xmm0, %xmm0, %xmm0
; X64-AVX-NEXT:    retq
  ret <16 x i8> <i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>
}

define <8 x i16> @soo() nounwind {
; X32-SSE-LABEL: soo:
; X32-SSE:       # BB#0:
; X32-SSE-NEXT:    pcmpeqd %xmm0, %xmm0
; X32-SSE-NEXT:    retl
;
; X32-AVX-LABEL: soo:
; X32-AVX:       # BB#0:
; X32-AVX-NEXT:    vpcmpeqd %xmm0, %xmm0, %xmm0
; X32-AVX-NEXT:    retl
;
; X64-SSE-LABEL: soo:
; X64-SSE:       # BB#0:
; X64-SSE-NEXT:    pcmpeqd %xmm0, %xmm0
; X64-SSE-NEXT:    retq
;
; X64-AVX-LABEL: soo:
; X64-AVX:       # BB#0:
; X64-AVX-NEXT:    vpcmpeqd %xmm0, %xmm0, %xmm0
; X64-AVX-NEXT:    retq
  ret <8 x i16> <i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1>
}

define <4 x i32> @ioo() nounwind {
; X32-SSE-LABEL: ioo:
; X32-SSE:       # BB#0:
; X32-SSE-NEXT:    pcmpeqd %xmm0, %xmm0
; X32-SSE-NEXT:    retl
;
; X32-AVX-LABEL: ioo:
; X32-AVX:       # BB#0:
; X32-AVX-NEXT:    vpcmpeqd %xmm0, %xmm0, %xmm0
; X32-AVX-NEXT:    retl
;
; X64-SSE-LABEL: ioo:
; X64-SSE:       # BB#0:
; X64-SSE-NEXT:    pcmpeqd %xmm0, %xmm0
; X64-SSE-NEXT:    retq
;
; X64-AVX-LABEL: ioo:
; X64-AVX:       # BB#0:
; X64-AVX-NEXT:    vpcmpeqd %xmm0, %xmm0, %xmm0
; X64-AVX-NEXT:    retq
  ret <4 x i32> <i32 -1, i32 -1, i32 -1, i32 -1>
}

define <2 x i64> @loo() nounwind {
; X32-SSE-LABEL: loo:
; X32-SSE:       # BB#0:
; X32-SSE-NEXT:    pcmpeqd %xmm0, %xmm0
; X32-SSE-NEXT:    retl
;
; X32-AVX-LABEL: loo:
; X32-AVX:       # BB#0:
; X32-AVX-NEXT:    vpcmpeqd %xmm0, %xmm0, %xmm0
; X32-AVX-NEXT:    retl
;
; X64-SSE-LABEL: loo:
; X64-SSE:       # BB#0:
; X64-SSE-NEXT:    pcmpeqd %xmm0, %xmm0
; X64-SSE-NEXT:    retq
;
; X64-AVX-LABEL: loo:
; X64-AVX:       # BB#0:
; X64-AVX-NEXT:    vpcmpeqd %xmm0, %xmm0, %xmm0
; X64-AVX-NEXT:    retq
  ret <2 x i64> <i64 -1, i64 -1>
}

define <2 x double> @doo() nounwind {
; X32-SSE-LABEL: doo:
; X32-SSE:       # BB#0:
; X32-SSE-NEXT:    pcmpeqd %xmm0, %xmm0
; X32-SSE-NEXT:    retl
;
; X32-AVX-LABEL: doo:
; X32-AVX:       # BB#0:
; X32-AVX-NEXT:    vpcmpeqd %xmm0, %xmm0, %xmm0
; X32-AVX-NEXT:    retl
;
; X64-SSE-LABEL: doo:
; X64-SSE:       # BB#0:
; X64-SSE-NEXT:    pcmpeqd %xmm0, %xmm0
; X64-SSE-NEXT:    retq
;
; X64-AVX-LABEL: doo:
; X64-AVX:       # BB#0:
; X64-AVX-NEXT:    vpcmpeqd %xmm0, %xmm0, %xmm0
; X64-AVX-NEXT:    retq
  ret <2 x double> <double 0xffffffffffffffff, double 0xffffffffffffffff>
}

define <4 x float> @foo() nounwind {
; X32-SSE-LABEL: foo:
; X32-SSE:       # BB#0:
; X32-SSE-NEXT:    pcmpeqd %xmm0, %xmm0
; X32-SSE-NEXT:    retl
;
; X32-AVX-LABEL: foo:
; X32-AVX:       # BB#0:
; X32-AVX-NEXT:    vpcmpeqd %xmm0, %xmm0, %xmm0
; X32-AVX-NEXT:    retl
;
; X64-SSE-LABEL: foo:
; X64-SSE:       # BB#0:
; X64-SSE-NEXT:    pcmpeqd %xmm0, %xmm0
; X64-SSE-NEXT:    retq
;
; X64-AVX-LABEL: foo:
; X64-AVX:       # BB#0:
; X64-AVX-NEXT:    vpcmpeqd %xmm0, %xmm0, %xmm0
; X64-AVX-NEXT:    retq
  ret <4 x float> <float 0xffffffffe0000000, float 0xffffffffe0000000, float 0xffffffffe0000000, float 0xffffffffe0000000>
}

define <32 x i8> @coo256() nounwind {
; X32-SSE-LABEL: coo256:
; X32-SSE:       # BB#0:
; X32-SSE-NEXT:    pcmpeqd %xmm0, %xmm0
; X32-SSE-NEXT:    pcmpeqd %xmm1, %xmm1
; X32-SSE-NEXT:    retl
;
; X32-AVX1-LABEL: coo256:
; X32-AVX1:       # BB#0:
; X32-AVX1-NEXT:    vpcmpeqd %xmm0, %xmm0, %xmm0
; X32-AVX1-NEXT:    vinsertf128 $1, %xmm0, %ymm0, %ymm0
; X32-AVX1-NEXT:    retl
;
; X32-AVX256-LABEL: coo256:
; X32-AVX256:       # BB#0:
; X32-AVX256-NEXT:    vpcmpeqd %ymm0, %ymm0, %ymm0
; X32-AVX256-NEXT:    retl
;
; X64-SSE-LABEL: coo256:
; X64-SSE:       # BB#0:
; X64-SSE-NEXT:    pcmpeqd %xmm0, %xmm0
; X64-SSE-NEXT:    pcmpeqd %xmm1, %xmm1
; X64-SSE-NEXT:    retq
;
; X64-AVX1-LABEL: coo256:
; X64-AVX1:       # BB#0:
; X64-AVX1-NEXT:    vpcmpeqd %xmm0, %xmm0, %xmm0
; X64-AVX1-NEXT:    vinsertf128 $1, %xmm0, %ymm0, %ymm0
; X64-AVX1-NEXT:    retq
;
; X64-AVX256-LABEL: coo256:
; X64-AVX256:       # BB#0:
; X64-AVX256-NEXT:    vpcmpeqd %ymm0, %ymm0, %ymm0
; X64-AVX256-NEXT:    retq
  ret <32 x i8> <i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>
}

define <16 x i16> @soo256() nounwind {
; X32-SSE-LABEL: soo256:
; X32-SSE:       # BB#0:
; X32-SSE-NEXT:    pcmpeqd %xmm0, %xmm0
; X32-SSE-NEXT:    pcmpeqd %xmm1, %xmm1
; X32-SSE-NEXT:    retl
;
; X32-AVX1-LABEL: soo256:
; X32-AVX1:       # BB#0:
; X32-AVX1-NEXT:    vpcmpeqd %xmm0, %xmm0, %xmm0
; X32-AVX1-NEXT:    vinsertf128 $1, %xmm0, %ymm0, %ymm0
; X32-AVX1-NEXT:    retl
;
; X32-AVX256-LABEL: soo256:
; X32-AVX256:       # BB#0:
; X32-AVX256-NEXT:    vpcmpeqd %ymm0, %ymm0, %ymm0
; X32-AVX256-NEXT:    retl
;
; X64-SSE-LABEL: soo256:
; X64-SSE:       # BB#0:
; X64-SSE-NEXT:    pcmpeqd %xmm0, %xmm0
; X64-SSE-NEXT:    pcmpeqd %xmm1, %xmm1
; X64-SSE-NEXT:    retq
;
; X64-AVX1-LABEL: soo256:
; X64-AVX1:       # BB#0:
; X64-AVX1-NEXT:    vpcmpeqd %xmm0, %xmm0, %xmm0
; X64-AVX1-NEXT:    vinsertf128 $1, %xmm0, %ymm0, %ymm0
; X64-AVX1-NEXT:    retq
;
; X64-AVX256-LABEL: soo256:
; X64-AVX256:       # BB#0:
; X64-AVX256-NEXT:    vpcmpeqd %ymm0, %ymm0, %ymm0
; X64-AVX256-NEXT:    retq
  ret <16 x i16> <i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1>
}

define <8 x i32> @ioo256() nounwind {
; X32-SSE-LABEL: ioo256:
; X32-SSE:       # BB#0:
; X32-SSE-NEXT:    pcmpeqd %xmm0, %xmm0
; X32-SSE-NEXT:    pcmpeqd %xmm1, %xmm1
; X32-SSE-NEXT:    retl
;
; X32-AVX1-LABEL: ioo256:
; X32-AVX1:       # BB#0:
; X32-AVX1-NEXT:    vpcmpeqd %xmm0, %xmm0, %xmm0
; X32-AVX1-NEXT:    vinsertf128 $1, %xmm0, %ymm0, %ymm0
; X32-AVX1-NEXT:    retl
;
; X32-AVX256-LABEL: ioo256:
; X32-AVX256:       # BB#0:
; X32-AVX256-NEXT:    vpcmpeqd %ymm0, %ymm0, %ymm0
; X32-AVX256-NEXT:    retl
;
; X64-SSE-LABEL: ioo256:
; X64-SSE:       # BB#0:
; X64-SSE-NEXT:    pcmpeqd %xmm0, %xmm0
; X64-SSE-NEXT:    pcmpeqd %xmm1, %xmm1
; X64-SSE-NEXT:    retq
;
; X64-AVX1-LABEL: ioo256:
; X64-AVX1:       # BB#0:
; X64-AVX1-NEXT:    vpcmpeqd %xmm0, %xmm0, %xmm0
; X64-AVX1-NEXT:    vinsertf128 $1, %xmm0, %ymm0, %ymm0
; X64-AVX1-NEXT:    retq
;
; X64-AVX256-LABEL: ioo256:
; X64-AVX256:       # BB#0:
; X64-AVX256-NEXT:    vpcmpeqd %ymm0, %ymm0, %ymm0
; X64-AVX256-NEXT:    retq
  ret <8 x i32> <i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1>
}

define <4 x i64> @loo256() nounwind {
; X32-SSE-LABEL: loo256:
; X32-SSE:       # BB#0:
; X32-SSE-NEXT:    pcmpeqd %xmm0, %xmm0
; X32-SSE-NEXT:    pcmpeqd %xmm1, %xmm1
; X32-SSE-NEXT:    retl
;
; X32-AVX1-LABEL: loo256:
; X32-AVX1:       # BB#0:
; X32-AVX1-NEXT:    vpcmpeqd %xmm0, %xmm0, %xmm0
; X32-AVX1-NEXT:    vinsertf128 $1, %xmm0, %ymm0, %ymm0
; X32-AVX1-NEXT:    retl
;
; X32-AVX256-LABEL: loo256:
; X32-AVX256:       # BB#0:
; X32-AVX256-NEXT:    vpcmpeqd %ymm0, %ymm0, %ymm0
; X32-AVX256-NEXT:    retl
;
; X64-SSE-LABEL: loo256:
; X64-SSE:       # BB#0:
; X64-SSE-NEXT:    pcmpeqd %xmm0, %xmm0
; X64-SSE-NEXT:    pcmpeqd %xmm1, %xmm1
; X64-SSE-NEXT:    retq
;
; X64-AVX1-LABEL: loo256:
; X64-AVX1:       # BB#0:
; X64-AVX1-NEXT:    vpcmpeqd %xmm0, %xmm0, %xmm0
; X64-AVX1-NEXT:    vinsertf128 $1, %xmm0, %ymm0, %ymm0
; X64-AVX1-NEXT:    retq
;
; X64-AVX256-LABEL: loo256:
; X64-AVX256:       # BB#0:
; X64-AVX256-NEXT:    vpcmpeqd %ymm0, %ymm0, %ymm0
; X64-AVX256-NEXT:    retq
  ret <4 x i64> <i64 -1, i64 -1, i64 -1, i64 -1>
}

define <4 x double> @doo256() nounwind {
; X32-SSE-LABEL: doo256:
; X32-SSE:       # BB#0:
; X32-SSE-NEXT:    pcmpeqd %xmm0, %xmm0
; X32-SSE-NEXT:    pcmpeqd %xmm1, %xmm1
; X32-SSE-NEXT:    retl
;
; X32-AVX1-LABEL: doo256:
; X32-AVX1:       # BB#0:
; X32-AVX1-NEXT:    vpcmpeqd %xmm0, %xmm0, %xmm0
; X32-AVX1-NEXT:    vinsertf128 $1, %xmm0, %ymm0, %ymm0
; X32-AVX1-NEXT:    retl
;
; X32-AVX256-LABEL: doo256:
; X32-AVX256:       # BB#0:
; X32-AVX256-NEXT:    vpcmpeqd %ymm0, %ymm0, %ymm0
; X32-AVX256-NEXT:    retl
;
; X64-SSE-LABEL: doo256:
; X64-SSE:       # BB#0:
; X64-SSE-NEXT:    pcmpeqd %xmm0, %xmm0
; X64-SSE-NEXT:    pcmpeqd %xmm1, %xmm1
; X64-SSE-NEXT:    retq
;
; X64-AVX1-LABEL: doo256:
; X64-AVX1:       # BB#0:
; X64-AVX1-NEXT:    vpcmpeqd %xmm0, %xmm0, %xmm0
; X64-AVX1-NEXT:    vinsertf128 $1, %xmm0, %ymm0, %ymm0
; X64-AVX1-NEXT:    retq
;
; X64-AVX256-LABEL: doo256:
; X64-AVX256:       # BB#0:
; X64-AVX256-NEXT:    vpcmpeqd %ymm0, %ymm0, %ymm0
; X64-AVX256-NEXT:    retq
  ret <4 x double> <double 0xffffffffffffffff, double 0xffffffffffffffff, double 0xffffffffffffffff, double 0xffffffffffffffff>
}

define <8 x float> @foo256() nounwind {
; X32-SSE-LABEL: foo256:
; X32-SSE:       # BB#0:
; X32-SSE-NEXT:    pcmpeqd %xmm0, %xmm0
; X32-SSE-NEXT:    pcmpeqd %xmm1, %xmm1
; X32-SSE-NEXT:    retl
;
; X32-AVX1-LABEL: foo256:
; X32-AVX1:       # BB#0:
; X32-AVX1-NEXT:    vpcmpeqd %xmm0, %xmm0, %xmm0
; X32-AVX1-NEXT:    vinsertf128 $1, %xmm0, %ymm0, %ymm0
; X32-AVX1-NEXT:    retl
;
; X32-AVX256-LABEL: foo256:
; X32-AVX256:       # BB#0:
; X32-AVX256-NEXT:    vpcmpeqd %ymm0, %ymm0, %ymm0
; X32-AVX256-NEXT:    retl
;
; X64-SSE-LABEL: foo256:
; X64-SSE:       # BB#0:
; X64-SSE-NEXT:    pcmpeqd %xmm0, %xmm0
; X64-SSE-NEXT:    pcmpeqd %xmm1, %xmm1
; X64-SSE-NEXT:    retq
;
; X64-AVX1-LABEL: foo256:
; X64-AVX1:       # BB#0:
; X64-AVX1-NEXT:    vpcmpeqd %xmm0, %xmm0, %xmm0
; X64-AVX1-NEXT:    vinsertf128 $1, %xmm0, %ymm0, %ymm0
; X64-AVX1-NEXT:    retq
;
; X64-AVX256-LABEL: foo256:
; X64-AVX256:       # BB#0:
; X64-AVX256-NEXT:    vpcmpeqd %ymm0, %ymm0, %ymm0
; X64-AVX256-NEXT:    retq
  ret <8 x float> <float 0xffffffffe0000000, float 0xffffffffe0000000, float 0xffffffffe0000000, float 0xffffffffe0000000, float 0xffffffffe0000000, float 0xffffffffe0000000, float 0xffffffffe0000000, float 0xffffffffe0000000>
}

define <64 x i8> @coo512() nounwind {
; X32-SSE-LABEL: coo512:
; X32-SSE:       # BB#0:
; X32-SSE-NEXT:    pcmpeqd %xmm0, %xmm0
; X32-SSE-NEXT:    pcmpeqd %xmm1, %xmm1
; X32-SSE-NEXT:    pcmpeqd %xmm2, %xmm2
; X32-SSE-NEXT:    pcmpeqd %xmm3, %xmm3
; X32-SSE-NEXT:    retl
;
; X32-AVX1-LABEL: coo512:
; X32-AVX1:       # BB#0:
; X32-AVX1-NEXT:    vpcmpeqd %xmm0, %xmm0, %xmm0
; X32-AVX1-NEXT:    vinsertf128 $1, %xmm0, %ymm0, %ymm0
; X32-AVX1-NEXT:    vmovaps %ymm0, %ymm1
; X32-AVX1-NEXT:    retl
;
; X32-AVX2-LABEL: coo512:
; X32-AVX2:       # BB#0:
; X32-AVX2-NEXT:    vpcmpeqd %ymm0, %ymm0, %ymm0
; X32-AVX2-NEXT:    vpcmpeqd %ymm1, %ymm1, %ymm1
; X32-AVX2-NEXT:    retl
;
; X32-KNL-LABEL: coo512:
; X32-KNL:       # BB#0:
; X32-KNL-NEXT:    vpcmpeqd %ymm0, %ymm0, %ymm0
; X32-KNL-NEXT:    vpcmpeqd %ymm1, %ymm1, %ymm1
; X32-KNL-NEXT:    retl
;
; X32-SKX-LABEL: coo512:
; X32-SKX:       # BB#0:
; X32-SKX-NEXT:    vpternlogd $255, %zmm0, %zmm0, %zmm0
; X32-SKX-NEXT:    retl
;
; X64-SSE-LABEL: coo512:
; X64-SSE:       # BB#0:
; X64-SSE-NEXT:    pcmpeqd %xmm0, %xmm0
; X64-SSE-NEXT:    pcmpeqd %xmm1, %xmm1
; X64-SSE-NEXT:    pcmpeqd %xmm2, %xmm2
; X64-SSE-NEXT:    pcmpeqd %xmm3, %xmm3
; X64-SSE-NEXT:    retq
;
; X64-AVX1-LABEL: coo512:
; X64-AVX1:       # BB#0:
; X64-AVX1-NEXT:    vpcmpeqd %xmm0, %xmm0, %xmm0
; X64-AVX1-NEXT:    vinsertf128 $1, %xmm0, %ymm0, %ymm0
; X64-AVX1-NEXT:    vmovaps %ymm0, %ymm1
; X64-AVX1-NEXT:    retq
;
; X64-AVX2-LABEL: coo512:
; X64-AVX2:       # BB#0:
; X64-AVX2-NEXT:    vpcmpeqd %ymm0, %ymm0, %ymm0
; X64-AVX2-NEXT:    vpcmpeqd %ymm1, %ymm1, %ymm1
; X64-AVX2-NEXT:    retq
;
; X64-KNL-LABEL: coo512:
; X64-KNL:       # BB#0:
; X64-KNL-NEXT:    vpcmpeqd %ymm0, %ymm0, %ymm0
; X64-KNL-NEXT:    vpcmpeqd %ymm1, %ymm1, %ymm1
; X64-KNL-NEXT:    retq
;
; X64-SKX-LABEL: coo512:
; X64-SKX:       # BB#0:
; X64-SKX-NEXT:    vpternlogd $255, %zmm0, %zmm0, %zmm0
; X64-SKX-NEXT:    retq
  ret <64 x i8> <i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1, i8 -1>
}

define <32 x i16> @soo512() nounwind {
; X32-SSE-LABEL: soo512:
; X32-SSE:       # BB#0:
; X32-SSE-NEXT:    pcmpeqd %xmm0, %xmm0
; X32-SSE-NEXT:    pcmpeqd %xmm1, %xmm1
; X32-SSE-NEXT:    pcmpeqd %xmm2, %xmm2
; X32-SSE-NEXT:    pcmpeqd %xmm3, %xmm3
; X32-SSE-NEXT:    retl
;
; X32-AVX1-LABEL: soo512:
; X32-AVX1:       # BB#0:
; X32-AVX1-NEXT:    vpcmpeqd %xmm0, %xmm0, %xmm0
; X32-AVX1-NEXT:    vinsertf128 $1, %xmm0, %ymm0, %ymm0
; X32-AVX1-NEXT:    vmovaps %ymm0, %ymm1
; X32-AVX1-NEXT:    retl
;
; X32-AVX2-LABEL: soo512:
; X32-AVX2:       # BB#0:
; X32-AVX2-NEXT:    vpcmpeqd %ymm0, %ymm0, %ymm0
; X32-AVX2-NEXT:    vpcmpeqd %ymm1, %ymm1, %ymm1
; X32-AVX2-NEXT:    retl
;
; X32-KNL-LABEL: soo512:
; X32-KNL:       # BB#0:
; X32-KNL-NEXT:    vpcmpeqd %ymm0, %ymm0, %ymm0
; X32-KNL-NEXT:    vpcmpeqd %ymm1, %ymm1, %ymm1
; X32-KNL-NEXT:    retl
;
; X32-SKX-LABEL: soo512:
; X32-SKX:       # BB#0:
; X32-SKX-NEXT:    vpternlogd $255, %zmm0, %zmm0, %zmm0
; X32-SKX-NEXT:    retl
;
; X64-SSE-LABEL: soo512:
; X64-SSE:       # BB#0:
; X64-SSE-NEXT:    pcmpeqd %xmm0, %xmm0
; X64-SSE-NEXT:    pcmpeqd %xmm1, %xmm1
; X64-SSE-NEXT:    pcmpeqd %xmm2, %xmm2
; X64-SSE-NEXT:    pcmpeqd %xmm3, %xmm3
; X64-SSE-NEXT:    retq
;
; X64-AVX1-LABEL: soo512:
; X64-AVX1:       # BB#0:
; X64-AVX1-NEXT:    vpcmpeqd %xmm0, %xmm0, %xmm0
; X64-AVX1-NEXT:    vinsertf128 $1, %xmm0, %ymm0, %ymm0
; X64-AVX1-NEXT:    vmovaps %ymm0, %ymm1
; X64-AVX1-NEXT:    retq
;
; X64-AVX2-LABEL: soo512:
; X64-AVX2:       # BB#0:
; X64-AVX2-NEXT:    vpcmpeqd %ymm0, %ymm0, %ymm0
; X64-AVX2-NEXT:    vpcmpeqd %ymm1, %ymm1, %ymm1
; X64-AVX2-NEXT:    retq
;
; X64-KNL-LABEL: soo512:
; X64-KNL:       # BB#0:
; X64-KNL-NEXT:    vpcmpeqd %ymm0, %ymm0, %ymm0
; X64-KNL-NEXT:    vpcmpeqd %ymm1, %ymm1, %ymm1
; X64-KNL-NEXT:    retq
;
; X64-SKX-LABEL: soo512:
; X64-SKX:       # BB#0:
; X64-SKX-NEXT:    vpternlogd $255, %zmm0, %zmm0, %zmm0
; X64-SKX-NEXT:    retq
  ret <32 x i16> <i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1, i16 -1>
}

define <16 x i32> @ioo512() nounwind {
; X32-SSE-LABEL: ioo512:
; X32-SSE:       # BB#0:
; X32-SSE-NEXT:    pcmpeqd %xmm0, %xmm0
; X32-SSE-NEXT:    pcmpeqd %xmm1, %xmm1
; X32-SSE-NEXT:    pcmpeqd %xmm2, %xmm2
; X32-SSE-NEXT:    pcmpeqd %xmm3, %xmm3
; X32-SSE-NEXT:    retl
;
; X32-AVX1-LABEL: ioo512:
; X32-AVX1:       # BB#0:
; X32-AVX1-NEXT:    vpcmpeqd %xmm0, %xmm0, %xmm0
; X32-AVX1-NEXT:    vinsertf128 $1, %xmm0, %ymm0, %ymm0
; X32-AVX1-NEXT:    vmovaps %ymm0, %ymm1
; X32-AVX1-NEXT:    retl
;
; X32-AVX2-LABEL: ioo512:
; X32-AVX2:       # BB#0:
; X32-AVX2-NEXT:    vpcmpeqd %ymm0, %ymm0, %ymm0
; X32-AVX2-NEXT:    vpcmpeqd %ymm1, %ymm1, %ymm1
; X32-AVX2-NEXT:    retl
;
; X32-AVX512-LABEL: ioo512:
; X32-AVX512:       # BB#0:
; X32-AVX512-NEXT:    vpternlogd $255, %zmm0, %zmm0, %zmm0
; X32-AVX512-NEXT:    retl
;
; X64-SSE-LABEL: ioo512:
; X64-SSE:       # BB#0:
; X64-SSE-NEXT:    pcmpeqd %xmm0, %xmm0
; X64-SSE-NEXT:    pcmpeqd %xmm1, %xmm1
; X64-SSE-NEXT:    pcmpeqd %xmm2, %xmm2
; X64-SSE-NEXT:    pcmpeqd %xmm3, %xmm3
; X64-SSE-NEXT:    retq
;
; X64-AVX1-LABEL: ioo512:
; X64-AVX1:       # BB#0:
; X64-AVX1-NEXT:    vpcmpeqd %xmm0, %xmm0, %xmm0
; X64-AVX1-NEXT:    vinsertf128 $1, %xmm0, %ymm0, %ymm0
; X64-AVX1-NEXT:    vmovaps %ymm0, %ymm1
; X64-AVX1-NEXT:    retq
;
; X64-AVX2-LABEL: ioo512:
; X64-AVX2:       # BB#0:
; X64-AVX2-NEXT:    vpcmpeqd %ymm0, %ymm0, %ymm0
; X64-AVX2-NEXT:    vpcmpeqd %ymm1, %ymm1, %ymm1
; X64-AVX2-NEXT:    retq
;
; X64-AVX512-LABEL: ioo512:
; X64-AVX512:       # BB#0:
; X64-AVX512-NEXT:    vpternlogd $255, %zmm0, %zmm0, %zmm0
; X64-AVX512-NEXT:    retq
  ret <16 x i32> <i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1, i32 -1>
}

define <8 x i64> @loo512() nounwind {
; X32-SSE-LABEL: loo512:
; X32-SSE:       # BB#0:
; X32-SSE-NEXT:    pcmpeqd %xmm0, %xmm0
; X32-SSE-NEXT:    pcmpeqd %xmm1, %xmm1
; X32-SSE-NEXT:    pcmpeqd %xmm2, %xmm2
; X32-SSE-NEXT:    pcmpeqd %xmm3, %xmm3
; X32-SSE-NEXT:    retl
;
; X32-AVX1-LABEL: loo512:
; X32-AVX1:       # BB#0:
; X32-AVX1-NEXT:    vpcmpeqd %xmm0, %xmm0, %xmm0
; X32-AVX1-NEXT:    vinsertf128 $1, %xmm0, %ymm0, %ymm0
; X32-AVX1-NEXT:    vmovaps %ymm0, %ymm1
; X32-AVX1-NEXT:    retl
;
; X32-AVX2-LABEL: loo512:
; X32-AVX2:       # BB#0:
; X32-AVX2-NEXT:    vpcmpeqd %ymm0, %ymm0, %ymm0
; X32-AVX2-NEXT:    vpcmpeqd %ymm1, %ymm1, %ymm1
; X32-AVX2-NEXT:    retl
;
; X32-AVX512-LABEL: loo512:
; X32-AVX512:       # BB#0:
; X32-AVX512-NEXT:    vpternlogd $255, %zmm0, %zmm0, %zmm0
; X32-AVX512-NEXT:    retl
;
; X64-SSE-LABEL: loo512:
; X64-SSE:       # BB#0:
; X64-SSE-NEXT:    pcmpeqd %xmm0, %xmm0
; X64-SSE-NEXT:    pcmpeqd %xmm1, %xmm1
; X64-SSE-NEXT:    pcmpeqd %xmm2, %xmm2
; X64-SSE-NEXT:    pcmpeqd %xmm3, %xmm3
; X64-SSE-NEXT:    retq
;
; X64-AVX1-LABEL: loo512:
; X64-AVX1:       # BB#0:
; X64-AVX1-NEXT:    vpcmpeqd %xmm0, %xmm0, %xmm0
; X64-AVX1-NEXT:    vinsertf128 $1, %xmm0, %ymm0, %ymm0
; X64-AVX1-NEXT:    vmovaps %ymm0, %ymm1
; X64-AVX1-NEXT:    retq
;
; X64-AVX2-LABEL: loo512:
; X64-AVX2:       # BB#0:
; X64-AVX2-NEXT:    vpcmpeqd %ymm0, %ymm0, %ymm0
; X64-AVX2-NEXT:    vpcmpeqd %ymm1, %ymm1, %ymm1
; X64-AVX2-NEXT:    retq
;
; X64-AVX512-LABEL: loo512:
; X64-AVX512:       # BB#0:
; X64-AVX512-NEXT:    vpternlogd $255, %zmm0, %zmm0, %zmm0
; X64-AVX512-NEXT:    retq
  ret <8 x i64> <i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1, i64 -1>
}

define <8 x double> @doo512() nounwind {
; X32-SSE-LABEL: doo512:
; X32-SSE:       # BB#0:
; X32-SSE-NEXT:    pcmpeqd %xmm0, %xmm0
; X32-SSE-NEXT:    pcmpeqd %xmm1, %xmm1
; X32-SSE-NEXT:    pcmpeqd %xmm2, %xmm2
; X32-SSE-NEXT:    pcmpeqd %xmm3, %xmm3
; X32-SSE-NEXT:    retl
;
; X32-AVX1-LABEL: doo512:
; X32-AVX1:       # BB#0:
; X32-AVX1-NEXT:    vpcmpeqd %xmm0, %xmm0, %xmm0
; X32-AVX1-NEXT:    vinsertf128 $1, %xmm0, %ymm0, %ymm0
; X32-AVX1-NEXT:    vmovaps %ymm0, %ymm1
; X32-AVX1-NEXT:    retl
;
; X32-AVX2-LABEL: doo512:
; X32-AVX2:       # BB#0:
; X32-AVX2-NEXT:    vpcmpeqd %ymm0, %ymm0, %ymm0
; X32-AVX2-NEXT:    vpcmpeqd %ymm1, %ymm1, %ymm1
; X32-AVX2-NEXT:    retl
;
; X32-AVX512-LABEL: doo512:
; X32-AVX512:       # BB#0:
; X32-AVX512-NEXT:    vpternlogd $255, %zmm0, %zmm0, %zmm0
; X32-AVX512-NEXT:    retl
;
; X64-SSE-LABEL: doo512:
; X64-SSE:       # BB#0:
; X64-SSE-NEXT:    pcmpeqd %xmm0, %xmm0
; X64-SSE-NEXT:    pcmpeqd %xmm1, %xmm1
; X64-SSE-NEXT:    pcmpeqd %xmm2, %xmm2
; X64-SSE-NEXT:    pcmpeqd %xmm3, %xmm3
; X64-SSE-NEXT:    retq
;
; X64-AVX1-LABEL: doo512:
; X64-AVX1:       # BB#0:
; X64-AVX1-NEXT:    vpcmpeqd %xmm0, %xmm0, %xmm0
; X64-AVX1-NEXT:    vinsertf128 $1, %xmm0, %ymm0, %ymm0
; X64-AVX1-NEXT:    vmovaps %ymm0, %ymm1
; X64-AVX1-NEXT:    retq
;
; X64-AVX2-LABEL: doo512:
; X64-AVX2:       # BB#0:
; X64-AVX2-NEXT:    vpcmpeqd %ymm0, %ymm0, %ymm0
; X64-AVX2-NEXT:    vpcmpeqd %ymm1, %ymm1, %ymm1
; X64-AVX2-NEXT:    retq
;
; X64-AVX512-LABEL: doo512:
; X64-AVX512:       # BB#0:
; X64-AVX512-NEXT:    vpternlogd $255, %zmm0, %zmm0, %zmm0
; X64-AVX512-NEXT:    retq
  ret <8 x double> <double 0xffffffffffffffff, double 0xffffffffffffffff, double 0xffffffffffffffff, double 0xffffffffffffffff, double 0xffffffffffffffff, double 0xffffffffffffffff, double 0xffffffffffffffff, double 0xffffffffffffffff>
}

define <16 x float> @foo512() nounwind {
; X32-SSE-LABEL: foo512:
; X32-SSE:       # BB#0:
; X32-SSE-NEXT:    pcmpeqd %xmm0, %xmm0
; X32-SSE-NEXT:    pcmpeqd %xmm1, %xmm1
; X32-SSE-NEXT:    pcmpeqd %xmm2, %xmm2
; X32-SSE-NEXT:    pcmpeqd %xmm3, %xmm3
; X32-SSE-NEXT:    retl
;
; X32-AVX1-LABEL: foo512:
; X32-AVX1:       # BB#0:
; X32-AVX1-NEXT:    vpcmpeqd %xmm0, %xmm0, %xmm0
; X32-AVX1-NEXT:    vinsertf128 $1, %xmm0, %ymm0, %ymm0
; X32-AVX1-NEXT:    vmovaps %ymm0, %ymm1
; X32-AVX1-NEXT:    retl
;
; X32-AVX2-LABEL: foo512:
; X32-AVX2:       # BB#0:
; X32-AVX2-NEXT:    vpcmpeqd %ymm0, %ymm0, %ymm0
; X32-AVX2-NEXT:    vpcmpeqd %ymm1, %ymm1, %ymm1
; X32-AVX2-NEXT:    retl
;
; X32-AVX512-LABEL: foo512:
; X32-AVX512:       # BB#0:
; X32-AVX512-NEXT:    vpternlogd $255, %zmm0, %zmm0, %zmm0
; X32-AVX512-NEXT:    retl
;
; X64-SSE-LABEL: foo512:
; X64-SSE:       # BB#0:
; X64-SSE-NEXT:    pcmpeqd %xmm0, %xmm0
; X64-SSE-NEXT:    pcmpeqd %xmm1, %xmm1
; X64-SSE-NEXT:    pcmpeqd %xmm2, %xmm2
; X64-SSE-NEXT:    pcmpeqd %xmm3, %xmm3
; X64-SSE-NEXT:    retq
;
; X64-AVX1-LABEL: foo512:
; X64-AVX1:       # BB#0:
; X64-AVX1-NEXT:    vpcmpeqd %xmm0, %xmm0, %xmm0
; X64-AVX1-NEXT:    vinsertf128 $1, %xmm0, %ymm0, %ymm0
; X64-AVX1-NEXT:    vmovaps %ymm0, %ymm1
; X64-AVX1-NEXT:    retq
;
; X64-AVX2-LABEL: foo512:
; X64-AVX2:       # BB#0:
; X64-AVX2-NEXT:    vpcmpeqd %ymm0, %ymm0, %ymm0
; X64-AVX2-NEXT:    vpcmpeqd %ymm1, %ymm1, %ymm1
; X64-AVX2-NEXT:    retq
;
; X64-AVX512-LABEL: foo512:
; X64-AVX512:       # BB#0:
; X64-AVX512-NEXT:    vpternlogd $255, %zmm0, %zmm0, %zmm0
; X64-AVX512-NEXT:    retq
  ret <16 x float> <float 0xffffffffe0000000, float 0xffffffffe0000000, float 0xffffffffe0000000, float 0xffffffffe0000000, float 0xffffffffe0000000, float 0xffffffffe0000000, float 0xffffffffe0000000, float 0xffffffffe0000000, float 0xffffffffe0000000, float 0xffffffffe0000000, float 0xffffffffe0000000, float 0xffffffffe0000000, float 0xffffffffe0000000, float 0xffffffffe0000000, float 0xffffffffe0000000, float 0xffffffffe0000000>
}