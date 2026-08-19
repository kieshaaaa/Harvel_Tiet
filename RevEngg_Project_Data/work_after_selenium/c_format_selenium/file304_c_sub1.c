#include <stdio.h>

int entry_point ( float ( *sideA )  ,  float ( *temptemp1 )  )   { 
  float sideB ; 
  float sideC ; 
  float sideD ; 
  float perimeter ; 
   ; 
  sideB =  ( *sideA )  ; 
  sideC =  ( *sideA )  ; 
  sideD =  ( *sideA )  ; 
  perimeter =  ( *sideA )  + sideB + sideC + sideD ; 
   ; 
   { 
     ( *temptemp1 )  = perimeter ; 
     ; 
   } 
  return 0 ; 
 } 
