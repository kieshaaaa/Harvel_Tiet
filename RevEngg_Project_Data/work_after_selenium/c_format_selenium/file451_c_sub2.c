#include <stdio.h>

long find_ncr ( int n ,  int r )   { 
  long result = 1 ; 
  int i ; 
  for  ( i = 1 ;  i <= r ;  ++i )   { 
    result *= n - r + i ; 
    result /= i ; 
   } 
  return result ; 
 } 
long find_npr ( int n ,  int r )   { 
  long result = 1 ; 
  int i ; 
  for  ( i = 0 ;  i < r ;  ++i )   { 
    result *= n - i ; 
   } 
  return result ; 
 } 
int entry_point ( int ( *n )  ,  int ( *r )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  , 
                long int ( *temptemp3 )  ,  int ( *temptemp4 )  ,  int ( *temptemp5 )  , 
                long int ( *temptemp6 )  )   { 
  long ncr ,  npr ; 
   ; 
   ; 
  ncr = find_ncr (  ( *n )  ,   ( *r )  )  ; 
  npr = find_npr (  ( *n )  ,   ( *r )  )  ; 
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
