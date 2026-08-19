#include <stdio.h>

int entry_point ( float ( *weight )  ,  float ( *heightCm )  ,  float ( *temptemp1 )  )   { 
  float bmi ; 
  float heightM ; 
   ; 
   ; 
  heightM =  ( *heightCm )  / 100 ; 
  bmi =  ( *weight )  /  ( heightM * heightM )  ; 
   ; 
   { 
     ( *temptemp1 )  = bmi ; 
     ; 
   } 
  return 0 ; 
 } 
