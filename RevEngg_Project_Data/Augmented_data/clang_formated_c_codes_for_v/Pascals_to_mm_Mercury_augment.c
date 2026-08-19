#include <stdio.h>

int entry_point ( float ( *pressure_pascals )  ,  float ( *temptemp1 )  )   { 
  float pressure_mmHg ; 
   ; 
  pressure_mmHg =  ( *pressure_pascals )  * 0.007 ; 
   { 
     ( *temptemp1 )  = pressure_mmHg ; 
     ; 
   } 
  return 0 ; 
 } 
