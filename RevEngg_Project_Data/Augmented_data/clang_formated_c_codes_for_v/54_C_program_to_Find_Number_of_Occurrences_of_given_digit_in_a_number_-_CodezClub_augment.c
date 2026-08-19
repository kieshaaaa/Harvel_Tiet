#include <stdio.h>

int entry_point ( int ( *number )  ,  int ( *digitToFind )  ,  int ( *temptemp1 )  , 
                int ( *temptemp2 )  ,  int ( *temptemp3 )  )   { 
  int count ; 
  int tempNumber ; 
  int remainder ; 
   ; 
   ; 
  count = 0 ; 
  tempNumber =  ( *number )  ; 
  for  (  ;  tempNumber > 0 ;  )   { 
    remainder = tempNumber % 10 ; 
    if  ( remainder ==  ( *digitToFind )  )  count++ ; 
    tempNumber /= 10 ; 
   } 
   { 
     ( *temptemp1 )  =  ( *digitToFind )  ; 
     ( *temptemp2 )  =  ( *number )  ; 
     ( *temptemp3 )  = count ; 
     ; 
   } 
  return 0 ; 
 } 
