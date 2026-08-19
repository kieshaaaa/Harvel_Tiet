#include <stdio.h>

int entry_point ( float ( *R )  ,  float ( *r )  ,  float ( *temptemp1 )  )   { 
  float squareR ; 
  float doublePi ; 
  float volume ; 
   ; 
   ; 
  doublePi = 2 * 3.14159265358979323846 ; 
  squareR =  ( *r )  *  ( *r )  ; 
  volume = doublePi * 3.14159265358979323846 *  ( *R )  * squareR ; 
   ; 
   { 
     ( *temptemp1 )  = volume ; 
     ; 
   } 
  return 0 ; 
 } 
