#include <stdio.h>

int entry_point ( float ( *a )  ,  float ( *b )  ,  float ( *c )  ,  float ( *d )  ,  float ( *temptemp1 )  )   { 
  float result ; 
   ; 
  result =  (  (  ( *a )  +  ( *b )  +  ( *c )  +  ( *d )  )  / 4 )  -  ( *d )  ; 
   { 
     ( *temptemp1 )  = result ; 
     ; 
   } 
  return 0 ; 
 } 
