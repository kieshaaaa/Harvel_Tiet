#include <stdio.h>
#include <stdlib.h>

int gcd ( int m ,  int n )   { 
  int rem ; 
  while  ( n != 0 )   { 
    rem = m % n ; 
    m = n ; 
    n = rem ; 
   } 
  return  ( m )  ; 
 } 
int entry_point ( int ( *num1 )  ,  int ( *num2 )  ,  int ( *num3 )  ,  int ( *temptemp1 )  , 
                int ( *temptemp2 )  ,  int ( *temptemp3 )  ,  int ( *temptemp4 )  )   { 
  int gcd2 ; 
  int gcd1 ; 
   ; 
   ; 
   ; 
  if  (  ( *num1 )  == 0 &&  ( *num2 )  == 0 &&  ( *num3 )  == 0 )   { 
     ; 
    exit ( 0 )  ; 
   } 
  gcd1 = gcd (  ( *num1 )  ,   ( *num2 )  )  ; 
  gcd2 = gcd (  ( *num3 )  ,  gcd1 )  ; 
   { 
     ( *temptemp1 )  =  ( *num1 )  ; 
     ( *temptemp2 )  =  ( *num2 )  ; 
     ( *temptemp3 )  =  ( *num3 )  ; 
     ( *temptemp4 )  = gcd2 ; 
     ; 
   } 
  return 0 ; 
 } 
