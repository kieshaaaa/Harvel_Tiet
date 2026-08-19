#include <math.h>
#include <stdio.h>

int entry_point ( float ( *a )  ,  float ( *b )  ,  float ( *temptemp1 )  )   { 
  float circumference ; 
   ; 
   ; 
  circumference =
      3.14159265358979323846 *
       ( 3 *  (  ( *a )  +  ( *b )  )  - sqrt (  ( 3 *  ( *a )  +  ( *b )  )  *  (  ( *a )  + 3 *  ( *b )  )  )  )  ; 
   { 
     ( *temptemp1 )  = circumference ; 
     ; 
   } 
  return 0 ; 
 } 
