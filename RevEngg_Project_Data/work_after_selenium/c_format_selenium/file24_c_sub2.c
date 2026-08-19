#include <stdio.h>

int entry_point ( float ( *a )  ,  float ( *b )  ,  float ( *c )  ,  float ( *d )  ,  float ( *e )  , 
                float ( *temptemp1 )  )   { 
  float product ; 
   ; 
  product =  ( *a )  *  ( *b )  *  ( *c )  *  ( *d )  *  ( *e )  ; 
   { 
     ( *temptemp1 )  = product ; 
     ; 
   } 
  return 0 ; 
 } 
