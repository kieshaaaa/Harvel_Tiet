#include <stdio.h>

int entry_point ( float ( *radius )  ,  float ( *temptemp1 )  ,  float ( *temptemp2 )  )   { 
  float area ; 
   ; 
  area = 3.14159 *  ( *radius )  *  ( *radius )  ; 
   ; 
   { 
     ( *temptemp1 )  = area ; 
     ; 
   }  ; 
   { 
     ( *temptemp2 )  =  ( *radius )  ; 
     ; 
   } 
  return 0 ; 
 } 
