#include <stdio.h>

int entry_point ( int ( *num )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  )   { 
  int temp ; 
  int remainder = 0 ; 
  int total = 0 ; 
   ; 
  temp =  ( *num )  ; 
  while  ( temp != 0 )   { 
    remainder = temp % 10 ; 
    total = total +  ( remainder * remainder * remainder )  ; 
    temp /= 10 ; 
   } 
  if  ( total ==  ( *num )  )   { 
     ( *temptemp1 )  =  ( *num )  ; 
     ; 
   }  else  { 
     ( *temptemp2 )  =  ( *num )  ; 
     ; 
   } 
  return 0 ; 
 } 
