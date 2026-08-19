#include <stdio.h>

int entry_point ( int ( *n )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  )   { 
  int pro ; 
  int sum ; 
  int dig ; 
   ; 
  sum = 0 ; 
  pro = 1 ; 
  while  (  ( *n )  > 0 )   { 
    dig =  ( *n )  % 10 ; 
    sum += dig ; 
    pro *= dig ; 
     ( *n )  =  ( *n )  / 10 ; 
   } 
   { 
     ( *temptemp1 )  = sum ; 
     ; 
   } 
   { 
     ( *temptemp2 )  = pro ; 
     ; 
   } 
  return 0 ; 
 } 
