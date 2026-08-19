#include <stdio.h>

int entry_point(int (*number), int (*A), int (*B), int (*temptemp1), int (*temptemp2), int (*temptemp3), int (*temptemp4), int (*temptemp5), int (*temptemp6)) {
;
;
;
 if((*number) % (*A) != 0 || (*number) % (*B) != 0) goto not_divisible;
{
(*temptemp1) = (*number) ;
(*temptemp2) = (*A) ;
(*temptemp3) = (*B) ;
;
}
 goto end;
not_divisible:
{
(*temptemp4) = (*number) ;
(*temptemp5) = (*A) ;
(*temptemp6) = (*B) ;
;
}
end:
 return 0;
}
