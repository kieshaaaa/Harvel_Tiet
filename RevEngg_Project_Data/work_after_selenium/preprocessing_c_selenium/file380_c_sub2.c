#include <stdio.h>
#include <math.h>

int entry_point(int (*num)) {
int digits = 0;
int remainder;
int originalNum;
float armstrongSum = 0;
;
 if((*num) < 0) {
;
 return 0;
 }
 originalNum = (*num);
 do {
 digits++;
 originalNum /= 10;
 } while (originalNum != 0);
 originalNum = (*num);
 do {
 remainder = originalNum % 10;
 armstrongSum += pow(remainder, digits);
 originalNum /= 10;
 } while (originalNum != 0);
 if ((int)armstrongSum == (*num))
;
 else
;
 return 0;
}
