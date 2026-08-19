#include <stdio.h>

int entry_point ( float ( *kmph )  ,  float ( *temptemp1 )  )   { 
  float conversionFactor ; 
  float knots ; 
  conversionFactor = 1.852 ; 
   ; 
  knots =  ( *kmph )  / conversionFactor ; 
   ; 
   { 
     ( *temptemp1 )  = knots ; 
     ; 
   } 
  return 0 ; 
 } 
