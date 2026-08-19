#include <stdio.h>

long factorial_calc ( int )  ; 
long find_ncr_calc ( int ,  int )  ; 
long find_npr_calc ( int ,  int )  ; 
int entry_point ( int ( *n )  ,  int ( *r )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  , 
                long int ( *temptemp3 )  ,  int ( *temptemp4 )  ,  int ( *temptemp5 )  , 
                long int ( *temptemp6 )  )   { 
  long ncr ,  npr ; 
   ; 
   ; 
  ncr = find_ncr_calc (  ( *n )  ,   ( *r )  )  ; 
  npr = find_npr_calc (  ( *n )  ,   ( *r )  )  ; 
   { 
     ( *temptemp1 )  =  ( *n )  ; 
     ( *temptemp2 )  =  ( *r )  ; 
     ( *temptemp3 )  = ncr ; 
     ; 
   } 
   { 
     ( *temptemp4 )  =  ( *n )  ; 
     ( *temptemp5 )  =  ( *r )  ; 
     ( *temptemp6 )  = npr ; 
     ; 
   } 
  return 0 ; 
 } 
long find_ncr_calc ( int n ,  int r )   { 
  long result ; 
  result = factorial_calc ( n )  /  ( factorial_calc ( r )  * factorial_calc ( n - r )  )  ; 
  return result ; 
 } 
long find_npr_calc ( int n ,  int r )   { 
  long result ; 
  result = factorial_calc ( n )  / factorial_calc ( n - r )  ; 
  return result ; 
 } 
long factorial_calc ( int n )   { 
  int c = 1 ; 
  long result = 1 ; 
  while  ( c <= n )   { 
    result = result * c ; 
    c++ ; 
   } 
  return result ; 
 } 
