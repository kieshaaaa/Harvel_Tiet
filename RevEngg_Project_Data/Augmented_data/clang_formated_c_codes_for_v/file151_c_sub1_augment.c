#include <stdio.h>

int entry_point ( int ( *num )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  )   { 
  int n ; 
  int tempNum ; 
  int remainder = 0 ; 
  int sum = 0 ; 
   ; 
  tempNum =  ( *num )  ; 
  while  ( tempNum != 0 )   { 
    remainder = tempNum % 10 ; 
    sum += remainder * remainder * remainder ; 
    tempNum /= 10 ; 
   } 
  if  ( sum ==  ( *num )  )   { 
     ( *temptemp1 )  =  ( *num )  ; 
     ; 
   }  else  { 
     ( *temptemp2 )  =  ( *num )  ; 
     ; 
   } 
  return 0 ; 
 } 
