#include <stdio.h>

int entry_point ( float ( *a )  ,  float ( *b )  ,  float ( *c )  ,  float ( *d )  ,  float ( *temptemp1 )  )   { 
  float denom ; 
  float result ; 
   ; 
  denom =  ( *c )  *  ( *d )  ; 
  if  ( denom != 0 )   { 
    result =  (  ( *a )  *  ( *b )  )  / denom ; 
     { 
       ( *temptemp1 )  = result ; 
       ; 
     } 
   }  else  { 
     ; 
   } 
  return 0 ; 
 } 
