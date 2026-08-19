#include <stdio.h>

int entry_point(int (*degree), float coefficients[(*degree) - index], float (*x), int (*temptemp1), float (*temptemp2)) {
float result = 0;
float coefficients[100];
int index;
;
 for (index = 0; index <= (*degree); index++) {
{
(*temptemp1) = index ;
;
}
 }
;
 for (index = (*degree); index > 0; index--) {
 result = (result + coefficients[index]) * (*x);
 }
 result += coefficients[0];
{
(*temptemp2) = result ;
;
}
 return 0;
}
