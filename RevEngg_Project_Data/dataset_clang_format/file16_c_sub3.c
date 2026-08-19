#include <stdio.h>

int entry_point ( int ( *number )  ,  int ( *temptemp1 )  ,  char ( *temptemp2 )  )   { 
   ; 
  int isDivisible =  ( *number )  % 5 ; 
  int result = isDivisible ?  ( *number )  + 2 :  ( *number )  + 1 ; 
  char *message = isDivisible ? "is not divisible by 5." : "is divisible by 5." ; 
   { 
     ( *temptemp1 )  = result ; 
     ( *temptemp2 )  = message ; 
     ; 
   } 
  return 0 ; 
 } 
