#include <stdio.h>

int entry_point ( float ( *r1 )  ,  float ( *i1 )  ,  float ( *r2 )  ,  float ( *i2 )  , 
                float ( *temptemp1 )  ,  float ( *temptemp2 )  )   { 
  float iSum ; 
  float rSum ; 
   ; 
   ; 
  rSum =  ( *r1 )  +  ( *r2 )  ; 
  iSum =  ( *i1 )  +  ( *i2 )  ; 
   { 
     ( *temptemp1 )  = rSum ; 
     ( *temptemp2 )  = iSum ; 
     ; 
   } 
  return 0 ; 
 } 
