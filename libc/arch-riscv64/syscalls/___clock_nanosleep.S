/* Generated by gensyscalls.py. Do not edit. */

#include <private/bionic_asm.h>

ENTRY(___clock_nanosleep)
    li      a7, __NR_clock_nanosleep
    scall

    li      a7, -MAX_ERRNO
    bgtu    a0, a7, 1f;

    ret
1:
    neg     a0, a0
    j       __set_errno_internal
END(___clock_nanosleep)
.hidden ___clock_nanosleep
