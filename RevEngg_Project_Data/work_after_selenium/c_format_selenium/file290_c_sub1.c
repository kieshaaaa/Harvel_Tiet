#include <stdio.h>

int entry_point ( int ( *number1 )  ,  int ( *number2 )  ,  int ( *temptemp1 )  , 
                float ( *temptemp2 )  )   { 
  int total ; 
  float average ; 
   ; 
  total =  ( *number1 )  +  ( *number2 )  ; 
  average = total / 2.0 ; 
   { 
     ( *temptemp1 )  = total ; 
     ; 
   } 
   { 
     ( *temptemp2 )  = average ; 
     ; 
   } 
  return 0 ; 
 } 
