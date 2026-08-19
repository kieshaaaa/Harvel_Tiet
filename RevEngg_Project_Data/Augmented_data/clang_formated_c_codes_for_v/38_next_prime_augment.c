#include <math.h>
#include <stdio.h>
#include <stdlib.h>

int entry_point ( int ( *n )  ,  int ( *temptemp1 )  )   { 
   ; 
  int flag ; 
  int j ; 
  int number =  ( *n )  + 1 ; 
  while  ( 1 )   { 
    if  ( number < 2 )   { 
      number++ ; 
      continue ; 
     } 
    flag = 1 ; 
    j = 2 ; 
    while  ( j <= sqrt ( number )  )   { 
      if  ( number % j == 0 )   { 
        flag = 0 ; 
        break ; 
       } 
      j++ ; 
     } 
    if  ( flag )   { 
       { 
         ( *temptemp1 )  = number ; 
         ; 
       } 
      break ; 
     } 
    number++ ; 
   }  ; 
  return 0 ; 
 } 
