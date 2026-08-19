#include <stdio.h>

int entry_point ( int ( *number )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  )   { 
  int tempNumber ; 
  int rem = 0 ; 
  int revNumber = 0 ; 
   ; 
  tempNumber =  ( *number )  ; 
  while  ( tempNumber != 0 )   { 
    rem = tempNumber % 10 ; 
    revNumber = revNumber * 10 + rem ; 
    tempNumber /= 10 ; 
   } 
  if  ( revNumber ==  ( *number )  )   { 
     ( *temptemp1 )  =  ( *number )  ; 
     ; 
   }  else  { 
     ( *temptemp2 )  =  ( *number )  ; 
     ; 
   } 
  return 0 ; 
 } 
