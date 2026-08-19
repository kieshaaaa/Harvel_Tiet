#include <stdio.h>

int entry_point(int (*a), int (*b), int (*temptemp1)) {
int min;
int hcf;
;
;
 min = ((*a) < (*b)) ? (*a) : (*b);
 for(hcf = min; hcf >= 1; hcf--) {
 if((*a) % hcf == 0 && (*b) % hcf == 0) {
 break;
 }
 }
{
(*temptemp1) = hcf ;
;
}
 return 0;
}
