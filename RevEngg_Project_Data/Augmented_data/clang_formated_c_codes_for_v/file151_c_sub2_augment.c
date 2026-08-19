#include <stdio.h>

int entry_point ( int ( *num )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  )   { 
  int pwr ; 
  int temp ; 
  int remainder ; 
  int sum = 0 ; 
   ; 
  temp =  ( *num )  ; 
  for  (  ;  temp != 0 ;  temp /= 10 )   { 
    remainder = temp % 10 ; 
    pwr = remainder * remainder * remainder ; 
    sum += pwr ; 
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
