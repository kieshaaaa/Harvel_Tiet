#include <stdio.h>

int entry_point ( float ( *mm )  ,  float ( *temptemp1 )  ,  float ( *temptemp2 )  )   { 
  float inches ; 
   ; 
  inches =  ( *mm )  ; 
  inches /= 25.4 ; 
   { 
     ( *temptemp1 )  =  ( *mm )  ; 
     ( *temptemp2 )  = inches ; 
     ; 
   } 
  return 0 ; 
 } 
