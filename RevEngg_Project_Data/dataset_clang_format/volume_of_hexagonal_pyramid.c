#include <math.h>
#include <stdio.h>

int entry_point ( float ( *s )  ,  float ( *h )  ,  float ( *temptemp1 )  )   { 
  float volume ; 
  float baseArea ; 
  float pi = 3.14159 ; 
   ; 
   ; 
  baseArea =  ( 3 * sqrt ( 3 )  / 2 )  *  ( *s )  *  ( *s )  ; 
  volume =  ( baseArea *  ( *h )  )  / 3 ; 
   { 
     ( *temptemp1 )  = volume ; 
     ; 
   } 
  return 0 ; 
 } 
