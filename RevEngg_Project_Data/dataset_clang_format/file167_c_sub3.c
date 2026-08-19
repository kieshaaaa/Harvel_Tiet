#include <stdio.h>

int entry_point ( float ( *a )  ,  float ( *b )  ,  float ( *c )  ,  float ( *d )  ,  float ( *e )  , 
                float ( *temptemp1 )  )   { 
  float result ; 
   ; 
  result =  ( *a )  ; 
  result +=  ( *b )  ; 
  result +=  ( *c )  ; 
  result -=  ( *d )  ; 
  result -=  ( *e )  ; 
   { 
     ( *temptemp1 )  = result ; 
     ; 
   } 
  return 0 ; 
 } 
