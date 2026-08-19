#include <math.h>
#include <stdio.h>
#include <stdlib.h>

int entry_point ( int ( *n )  ,  int ( *temptemp1 )  )   { 
   ; 
  int flag ; 
  int i ; 
  int num =  ( *n )  + 1 ; 
  while  ( 1 )   { 
    if  ( num < 2 )   { 
      num++ ; 
      continue ; 
     } 
    flag = 1 ; 
    for  ( i = 2 ;  i <= sqrt ( num )  ;  i++ )   { 
      if  ( num % i == 0 )   { 
        flag = 0 ; 
        break ; 
       } 
     } 
    if  ( flag )   { 
       { 
         ( *temptemp1 )  = num ; 
         ; 
       } 
      break ; 
     } 
    num++ ; 
   }  ; 
  return 0 ; 
 } 
