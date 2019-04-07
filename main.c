#include <setjmp.h>
#include <stdio.h>

int main() {

  int x = 0;
  jmp_buf buf;
  
  x = setjmp(buf);
  printf("%d\n", x);
  if (x < 100 - 1)
      longjmp(buf, ++x);

  return 0;
} // main

