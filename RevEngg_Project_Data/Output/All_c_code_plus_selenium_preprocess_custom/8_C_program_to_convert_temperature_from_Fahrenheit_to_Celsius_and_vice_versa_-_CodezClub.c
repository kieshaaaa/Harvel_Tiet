#include <stdio.h>

int entry_point(int (*choice), float (*fh), float (*cl), float (*temptemp1), float (*temptemp2))
{
;
;
;
 if((*choice) ==1){
;
 (*cl)= ((*fh) - 32) / 1.8;
{
(*temptemp1) = (*cl) ;
;
}
 }
 else if((*choice)==2){
;
 (*fh)= ((*cl)*1.8)+32;
{
(*temptemp2) = (*fh) ;
;
}
 }
 else{
;
 }
 return 0;
}
