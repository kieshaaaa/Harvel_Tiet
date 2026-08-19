#include <math.h>
#include <stdio.h>

int entry_point ( float ( *radius )  ,  float ( *height )  ,  float ( *temptemp1 )  )   { 
  float area ; 
  float slantHeight ; 
   ; 
   ; 
  slantHeight = sqrt (  ( *radius )  *  ( *radius )  +  ( *height )  *  ( *height )  )  ; 
  area = 3.14159 *  ( *radius )  *  (  ( *radius )  + slantHeight )  ; 
   ; 
   { 
     ( *temptemp1 )  = area ; 
     ; 
   } 
  return 0 ; 
 } 
