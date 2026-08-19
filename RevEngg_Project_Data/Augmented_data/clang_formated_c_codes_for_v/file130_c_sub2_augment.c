#include <stdio.h>

int entry_point ( int ( *num )  ,  int ( *temptemp1 )  )   { 
  int power = 1 ; 
  int dec = 0 ; 
  int reversed = 0 ; 
   ; 
  int temp =  ( *num )  ; 
  while  ( temp != 0 )   { 
    reversed = reversed * 10 +  ( temp % 10 )  ; 
    temp /= 10 ; 
   } 
  temp = reversed ; 
  while  ( temp != 0 )   { 
    dec +=  ( temp % 10 )  * power ; 
    power *= 8 ; 
    temp /= 10 ; 
   } 
   { 
     ( *temptemp1 )  = dec ; 
     ; 
   } 
  return 0 ; 
 } 
