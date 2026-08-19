#include <stdio.h>

int entry_point ( int ( *n )  ,  int ( *r )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  , 
                int ( *temptemp3 )  )   { 
  int i ; 
  int factorial_n ; 
  int combination ; 
  int factorial_r ; 
  int factorial_nr ; 
   ; 
   ; 
  factorial_n = 1 ; 
  factorial_r = 1 ; 
  factorial_nr = 1 ; 
  i = 1 ; 
  while  ( i <=  ( *n )  )   { 
    factorial_n *= i ; 
    i++ ; 
   } 
  i = 1 ; 
  while  ( i <=  ( *r )  )   { 
    factorial_r *= i ; 
    i++ ; 
   } 
  i = 1 ; 
  while  ( i <=  (  ( *n )  -  ( *r )  )  )   { 
    factorial_nr *= i ; 
    i++ ; 
   } 
  combination = factorial_n /  ( factorial_r * factorial_nr )  ; 
   { 
     ( *temptemp1 )  =  ( *n )  ; 
     ( *temptemp2 )  =  ( *r )  ; 
     ( *temptemp3 )  = combination ; 
     ; 
   } 
  return 0 ; 
 } 
