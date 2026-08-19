#include <stdio.h>

int entry_point ( int ( *x )  ,  int ( *y )  ,  int ( *temptemp1 )  ,  float ( *temptemp2 )  )   { 
  int addition ; 
  float average ; 
   ; 
   ; 
  addition =  ( *x )  +  ( *y )  ; 
  average = addition / 2.0f ; 
   { 
     ( *temptemp1 )  = addition ; 
     ; 
   } 
   { 
     ( *temptemp2 )  = average ; 
     ; 
   } 
  return 0 ; 
 } 
