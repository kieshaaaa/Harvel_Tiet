#include <stdio.h>

int entry_point(int (*a), int (*b), int (*temptemp1), int (*temptemp2), int (*temptemp3)) {
int hcf;
;
;
 for (hcf = ((*a) < (*b)) ? (*a) : (*b); hcf > 0; hcf--) {
 if ((*a) % hcf == 0 && (*b) % hcf == 0)
 break;
 }
{
(*temptemp1) = (*a) ;
(*temptemp2) = (*b) ;
(*temptemp3) = hcf ;
;
}
 return 0;
}
