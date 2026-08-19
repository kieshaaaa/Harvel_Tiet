#include <stdio.h>

int entry_point ( int ( *number )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  )   { 
  int n ; 
  int tempNumber ; 
  int rem = 0 ; 
  int sum = 0 ; 
   ; 
  for  ( tempNumber =  ( *number )  ;  tempNumber != 0 ;  tempNumber /= 10 )   { 
    rem = tempNumber % 10 ; 
    sum += rem * rem * rem ; 
   } 
  if  ( sum ==  ( *number )  )   { 
     ( *temptemp1 )  =  ( *number )  ; 
     ; 
   }  else  { 
     ( *temptemp2 )  =  ( *number )  ; 
     ; 
   } 
  return 0 ; 
 } 
