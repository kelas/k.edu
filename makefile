SHELL=bash
# see https://reviews.llvm.org/D117798
I=-D__builtin_ia32_pmaxud512=__builtin_elementwise_max -D__builtin_ia32_pmaxub512=__builtin_elementwise_max
a:;clang-14 -oa ?.c -funsigned-char -f{no-builtin,no-unwind-tables} -w -nostdlib -mavx512{f,dq,vbmi,vnni,vpopcntdq,bw} -Ofast $I
