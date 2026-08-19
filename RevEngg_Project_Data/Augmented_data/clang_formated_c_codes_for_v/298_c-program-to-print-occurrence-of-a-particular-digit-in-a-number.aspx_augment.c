#include <stdio.h>

int entry_point ( int ( *number )  ,  int ( *targetDigit )  ,  int ( *temptemp1 )  , 
                int ( *temptemp2 )  )   { 
  int count ; 
  int tempNumber ; 
  int remainder ; 
   ; 
   ; 
  count = 0 ; 
  tempNumber =  ( *number )  ; 
  for  (  ;  tempNumber > 0 ;  )   { 
    remainder = tempNumber % 10 ; 
    if  ( remainder ==  ( *targetDigit )  )  count++ ; 
    tempNumber /= 10 ; 
   } 
   { 
     ( *temptemp1 )  = count ; 
     ( *temptemp2 )  =  ( *number )  ; 
     ; 
   } 
  return 0 ; 
 } 
