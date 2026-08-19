#include <math.h>
#include <stdio.h>

int entry_point ( float ( *radius )  ,  float ( *temptemp1 )  )   { 
  float radiusCubed ; 
  float volume ; 
   ; 
  radiusCubed =  ( *radius )  *  ( *radius )  *  ( *radius )  ; 
  volume =  ( 4.0f / 3.0f )  * M_PI * radiusCubed ; 
   ; 
   { 
     ( *temptemp1 )  = volume ; 
     ; 
   } 
  return 0 ; 
 } 
