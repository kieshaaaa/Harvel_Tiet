#include <stdio.h>

int entry_point ( int ( *number )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  )   { 
  int digitCount ; 
  int tempNumber ; 
   ; 
  digitCount = 0 ; 
  tempNumber =  ( *number )  ; 
  for  (  ;  tempNumber > 0 ;  tempNumber /= 10 )   { 
    digitCount++ ; 
   } 
   { 
     ( *temptemp1 )  = digitCount ; 
     ( *temptemp2 )  =  ( *number )  ; 
     ; 
   } 
  return 0 ; 
 } 
