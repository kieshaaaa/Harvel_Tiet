#include <math.h>
#include <stdio.h>

int entry_point ( int ( *numTerms )  ,  float ( *temptemp1 )  )   { 
  int i ; 
  float sum ; 
  int counter ; 
   ; 
  sum = 0.0f ; 
  counter = 1 ; 
  i = 1 ; 
  while  ( i <=  ( *numTerms )  )   { 
    sum = sum +  (  ( float )  ( pow ( counter ,  2 )  )  /  ( float )  ( pow ( counter ,  3 )  )  )  ; 
    counter += 2 ; 
    i++ ; 
   } 
   { 
     ( *temptemp1 )  = sum ; 
     ; 
   } 
  return 0 ; 
 } 
