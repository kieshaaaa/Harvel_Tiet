#include <stdio.h>

int entry_point ( float ( *speed_kmph )  ,  float ( *temptemp1 )  )   { 
  float speed_mph ; 
   ; 
  speed_mph =  ( *speed_kmph )  * 0.6213712 ; 
   { 
     ( *temptemp1 )  = speed_mph ; 
     ; 
   } 
  return 0 ; 
 } 
