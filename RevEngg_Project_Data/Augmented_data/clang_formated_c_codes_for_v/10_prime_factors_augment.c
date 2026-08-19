#include <stdio.h>

void printPrimeFactors ( int )  ; 
int entry_point ( int ( *number )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  )   { 
  int j ; 
   ; 
   { 
     ( *temptemp1 )  =  ( *number )  ; 
     ; 
   } 
  j = 2 ; 
  while  ( j <=  ( *number )  )   { 
    while  (  ( *number )  % j == 0 )   { 
       { 
         ( *temptemp2 )  = j ; 
         ; 
       } 
       ( *number )  /= j ; 
     } 
    j++ ; 
   } 
  return 0 ; 
 } 
