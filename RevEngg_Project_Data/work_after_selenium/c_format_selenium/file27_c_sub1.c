#include <stdio.h>

int entry_point ( int ( *lower )  ,  int ( *upper )  ,  int ( *temptemp1 )  )   { 
  int temp ; 
  int digit ; 
  int reversed ; 
  int num ; 
   ; 
   ; 
  for  ( num =  ( *lower )  ;  num <=  ( *upper )  ;  num++ )   { 
    temp = num ; 
    reversed = 0 ; 
    while  ( temp > 0 )   { 
      digit = temp % 10 ; 
      reversed = reversed * 10 + digit ; 
      temp /= 10 ; 
     } 
    if  ( num == reversed )   { 
       { 
         ( *temptemp1 )  = num ; 
         ; 
       } 
     } 
   } 
  return 0 ; 
 } 
