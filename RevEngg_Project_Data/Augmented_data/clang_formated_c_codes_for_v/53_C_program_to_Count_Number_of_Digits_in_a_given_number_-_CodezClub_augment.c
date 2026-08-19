#include <stdio.h>

int entry_point ( int ( *number )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  )   { 
  int digitCount ; 
  int tempNumber ; 
   ; 
  digitCount = 0 ; 
  tempNumber =  ( *number )  ; 
  for  (  ;  tempNumber > 0 ;  )   { 
    digitCount++ ; 
    tempNumber /= 10 ; 
   } 
   { 
     ( *temptemp1 )  =  ( *number )  ; 
     ( *temptemp2 )  = digitCount ; 
     ; 
   } 
  return 0 ; 
 } 
