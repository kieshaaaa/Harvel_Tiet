#include <math.h>
#include <stdio.h>

int entry_point ( float ( *rad )  ,  float ( *h )  ,  float ( *temptemp1 )  ,  float ( *temptemp2 )  , 
                float ( *temptemp3 )  )   { 
  float surfaceArea ; 
  float slantHeight ; 
   ; 
  slantHeight = sqrt ( pow (  ( *rad )  ,  2 )  + pow (  ( *h )  ,  2 )  )  ; 
  surfaceArea = 3.14159 *  ( *rad )  *  (  ( *rad )  + slantHeight )  ; 
   { 
     ( *temptemp1 )  =  ( *rad )  ; 
     ( *temptemp2 )  =  ( *h )  ; 
     ; 
   } 
   { 
     ( *temptemp3 )  = surfaceArea ; 
     ; 
   } 
  return 0 ; 
 } 
