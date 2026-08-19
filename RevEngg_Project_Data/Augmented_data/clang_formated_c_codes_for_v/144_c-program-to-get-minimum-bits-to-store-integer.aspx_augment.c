#include <stdio.h>

int countBits ( int )  ; 
int entry_point ( int ( *num )  ,  int ( *temptemp1 )  )   { 
   ; 
   { 
     ( *temptemp1 )  = countBits (  ( *num )  )  ; 
     ; 
   } 
  return 0 ; 
 } 
int countBits ( int n )   { 
  int count = 0 ,  i = 0 ; 
  if  ( n == 0 )  return 0 ; 
  while  ( i < 32 )   { 
    if  (  ( 1 << i )  & n )  count = i ; 
    i++ ; 
   } 
  return ++count ; 
 } 
