#include <math.h>
#include <stdio.h>

int entry_point ( int ( *n )  ,  float ( *s )  ,  float ( *temptemp1 )  )   { 
  float area ; 
  float pi = 3.141592653589793 ; 
   ; 
   ; 
  area =  (  ( *n )  *  ( *s )  *  ( *s )  )  /  ( 4 * tan ( pi /  ( *n )  )  )  ; 
   { 
     ( *temptemp1 )  = area ; 
     ; 
   } 
  return 0 ; 
 } 
