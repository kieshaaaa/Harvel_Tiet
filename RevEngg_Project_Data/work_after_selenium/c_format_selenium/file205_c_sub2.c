#include <stdio.h>

int entry_point ( float ( *length )  ,  float ( *width )  ,  float ( *height )  , 
                float ( *temptemp1 )  )   { 
  float surfaceArea ; 
   ; 
   ; 
   ; 
  surfaceArea =  ( *length )  *  ( *width )  ; 
  surfaceArea +=  ( *width )  *  ( *height )  ; 
  surfaceArea +=  ( *height )  *  ( *length )  ; 
  surfaceArea *= 2 ; 
   { 
     ( *temptemp1 )  = surfaceArea ; 
     ; 
   } 
  return 0 ; 
 } 
