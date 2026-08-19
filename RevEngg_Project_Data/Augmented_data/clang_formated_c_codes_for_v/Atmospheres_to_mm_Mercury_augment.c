#include <stdio.h>

int entry_point ( float ( *atmospheres )  ,  float ( *temptemp1 )  )   { 
  float millimetersMercury ; 
   ; 
  millimetersMercury =  ( *atmospheres )  * 760 ; 
   { 
     ( *temptemp1 )  = millimetersMercury ; 
     ; 
   } 
  return 0 ; 
 } 
