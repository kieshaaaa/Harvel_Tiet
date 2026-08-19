#include <stdio.h>

int entry_point ( float ( *kmph )  ,  float ( *temptemp1 )  )   { 
  float knots ; 
   ; 
  knots =  ( *kmph )  / 1.852 ; 
   { 
     ( *temptemp1 )  = knots ; 
     ; 
   } 
  return 0 ; 
 } 
