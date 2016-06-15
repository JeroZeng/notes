#include <stdio.h>

static inline int multi(int x, int y)
{
    int zlow;
    __asm__ volatile (" smull %0,%1,%2,%3" 
                      : "=&r" (zlow), "=r" (x)
                      : "%r" (y), "1" (x)) ;  
  return x;
}

void testAsm()
{
    printf("%d\n", multi(12<<16, 1<<16)); 
}
