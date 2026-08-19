#include <stdio.h>
#include <math.h>

int entry_point(int (*num1), int (*num2))
{
;
 (*num1) = fabs((*num1));
 (*num2) = fabs((*num2));
int max = (*num1) > (*num2) ? (*num1) : (*num2);
int min = (*num1) < (*num2) ? (*num1) : (*num2);
 return 0;
}
