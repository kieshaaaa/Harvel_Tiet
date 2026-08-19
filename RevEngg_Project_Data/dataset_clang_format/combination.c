#include <stdio.h>

int entry_point ( int ( *n )  ,  int ( *r )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  , 
                int ( *temptemp3 )  )   { 
  int i ; 
  int fact_n ; 
  int combination ; 
  int fact_r ; 
  int fact_nr ; 
   ; 
   ; 
  fact_n = 1 ; 
  fact_r = 1 ; 
  fact_nr = 1 ; 
  for  ( i = 1 ;  i <=  ( *n )  ;  i++ )   { 
    fact_n *= i ; 
   } 
  for  ( i = 1 ;  i <=  ( *r )  ;  i++ )   { 
    fact_r *= i ; 
   } 
  for  ( i = 1 ;  i <=  (  ( *n )  -  ( *r )  )  ;  i++ )   { 
    fact_nr *= i ; 
   } 
  combination = fact_n /  ( fact_r * fact_nr )  ; 
   { 
     ( *temptemp1 )  =  ( *n )  ; 
     ( *temptemp2 )  =  ( *r )  ; 
     ( *temptemp3 )  = combination ; 
     ; 
   } 
  return 0 ; 
 } 
