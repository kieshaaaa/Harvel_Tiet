#include <stdio.h>

int entry_point ( int ( *number )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  ,  int ( *temptemp3 )  , 
                int ( *temptemp4 )  )   { 
  int originalNumber ; 
  int product ; 
  int sum ; 
  int digit ; 
   ; 
  originalNumber =  ( *number )  ; 
  sum = 0 ; 
  product = 1 ; 
  for  (  ;   ( *number )  > 0 ;  )   { 
    digit =  ( *number )  % 10 ; 
    sum += digit ; 
    product *= digit ; 
     ( *number )  /= 10 ; 
   } 
   { 
     ( *temptemp1 )  = originalNumber ; 
     ( *temptemp2 )  = sum ; 
     ; 
   } 
   { 
     ( *temptemp3 )  = originalNumber ; 
     ( *temptemp4 )  = product ; 
     ; 
   } 
  return 0 ; 
 } 
