#include <stdio.h>

int entry_point ( float ( *bar )  ,  float ( *temptemp1 )  )   { 
  float conversionFactor ; 
  float mmHg ; 
  conversionFactor = 750.062 ; 
   ; 
  mmHg = conversionFactor *  ( *bar )  ; 
   { 
     ( *temptemp1 )  = mmHg ; 
     ; 
   } 
  return 0 ; 
 } 
