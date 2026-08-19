#include <stdio.h>

int entry_point ( int ( *n )  ,  int ( *r )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  , 
                int ( *temptemp3 )  )   { 
  int fact_nr = 1 ; 
  int fact_n = 1 ; 
  int i = 1 ; 
  int permutation ; 
   ; 
   ; 
  while  ( i <=  ( *n )  )   { 
    fact_n *= i ; 
    if  ( i <=  (  ( *n )  -  ( *r )  )  )   { 
      fact_nr *= i ; 
     } 
    i++ ; 
   } 
  permutation = fact_n / fact_nr ; 
   { 
     ( *temptemp1 )  =  ( *n )  ; 
     ( *temptemp2 )  =  ( *r )  ; 
     ; 
   } 
   { 
     ( *temptemp3 )  = permutation ; 
     ; 
   } 
  return 0 ; 
 } 
