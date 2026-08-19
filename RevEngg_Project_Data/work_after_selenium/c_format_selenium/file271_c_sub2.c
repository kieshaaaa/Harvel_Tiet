#include <stdio.h>

int entry_point ( float ( *a )  ,  float ( *b )  ,  float ( *c )  ,  float ( *d )  ,  float ( *temptemp1 )  )   { 
  float result ; 
  float mult_ab ; 
  float sum_cd ; 
   ; 
  sum_cd =  ( *c )  +  ( *d )  ; 
  if  ( sum_cd != 0 )   { 
    mult_ab =  ( *a )  *  ( *b )  ; 
    result = mult_ab / sum_cd ; 
     ; 
     { 
       ( *temptemp1 )  = result ; 
       ; 
     } 
   }  else  { 
     ; 
   } 
  return 0 ; 
 } 
