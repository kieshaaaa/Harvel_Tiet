#include <stdio.h>

int entry_point ( int ( *lower )  ,  int ( *upper )  ,  int ( *temptemp1 )  )   { 
  int digit ; 
  int reversed ; 
  int num ; 
  int temp ; 
  int originalNum ; 
   ; 
   ; 
  for  ( num =  ( *lower )  ;  num <=  ( *upper )  ;  num++ )   { 
    reversed = 0 ; 
    originalNum = num ; 
    temp = num ; 
    while  ( temp != 0 )   { 
      digit = temp % 10 ; 
      reversed = reversed * 10 + digit ; 
      temp /= 10 ; 
     } 
    if  ( originalNum == reversed )   { 
       { 
         ( *temptemp1 )  = originalNum ; 
         ; 
       } 
     } 
   } 
  return 0 ; 
 } 
