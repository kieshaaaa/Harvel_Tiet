#include <stdio.h>

int entry_point ( int ( *lower )  ,  int ( *upper )  ,  int ( *temptemp1 )  )   { 
   ; 
   ; 
  int num =  ( *lower )  ; 
  int digit ; 
  int reversed = 0 ; 
  int temp = num ; 
  for  (  ;  temp > 0 ;  temp /= 10 )   { 
    digit = temp % 10 ; 
    reversed = reversed * 10 + digit ; 
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
