#include <math.h>
#include <stdio.h>

int entry_point ( float ( *radius )  ,  float ( *temptemp1 )  )   { 
  float volume ; 
   ; 
  volume =  ( 4.0 / 3.0 )  * M_PI *  (  ( *radius )  *  ( *radius )  *  ( *radius )  )  ; 
   { 
     ( *temptemp1 )  = volume ; 
     ; 
   } 
  return 0 ; 
 } 
