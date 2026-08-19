#include <math.h>
#include <stdio.h>

int entry_point ( float ( *s )  ,  float ( *temptemp1 )  )   { 
  float cp ; 
  float root3 ; 
  float a ; 
   ; 
  root3 = sqrt ( 3 )  ; 
  cp = 3 * root3 / 2 ; 
  a = cp *  ( *s )  *  ( *s )  ; 
   ; 
   { 
     ( *temptemp1 )  = a ; 
     ; 
   } 
  return 0 ; 
 } 
