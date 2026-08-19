#include <math.h>
#include <stdio.h>

int entry_point ( float ( *sideLength )  ,  float ( *height )  ,  float ( *temptemp1 )  )   { 
  float volume ; 
  float baseArea ; 
  float pi = 3.14159 ; 
   ; 
   ; 
  baseArea =  ( 5 *  ( *sideLength )  *  ( *sideLength )  )  /  ( 4 * tan ( pi / 5 )  )  ; 
  volume =  ( baseArea *  ( *height )  )  / 3 ; 
   { 
     ( *temptemp1 )  = volume ; 
     ; 
   } 
  return 0 ; 
 } 
