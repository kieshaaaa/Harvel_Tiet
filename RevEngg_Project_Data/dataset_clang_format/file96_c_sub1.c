#include <stdio.h>

int entry_point ( float ( *outerRadius )  ,  float ( *innerRadius )  ,  float ( *temptemp1 )  )   { 
  float totalCircumference ; 
  float innerCircumference ; 
  float outerCircumference ; 
   ; 
   ; 
  outerCircumference = 2 * 3.14159 *  ( *outerRadius )  ; 
  innerCircumference = 2 * 3.14159 *  ( *innerRadius )  ; 
  totalCircumference = outerCircumference + innerCircumference ; 
   ; 
   { 
     ( *temptemp1 )  = totalCircumference ; 
     ; 
   } 
  return 0 ; 
 } 
