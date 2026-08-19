#include <stdio.h>

int globalNum = 100;
void testFunction();
int entry_point(int (*temptemp1), int (*temptemp2), int (*temptemp3)) {
int localMainNum = 200;
int anotherLocalMainNum = 300;
{
(*temptemp1) = localMainNum ;
(*temptemp2) = anotherLocalMainNum ;
;
}
 testFunction();
{
(*temptemp3) = anotherLocalMainNum ;
;
}
 return 0;
}
void testFunction() {
 int localTestNum = 400;
;
;
}
