#include <stdio.h>

int entry_point(int (*x), int (*y), int (*z), int (*temptemp1)) {
int largest;
;
 largest = ((*x) > (*y)) ? ((*x) > (*z) ? (*x) : (*z)) : ((*y) > (*z) ? (*y) : (*z));
{
(*temptemp1) = largest ;
;
}
 return 0;
}
