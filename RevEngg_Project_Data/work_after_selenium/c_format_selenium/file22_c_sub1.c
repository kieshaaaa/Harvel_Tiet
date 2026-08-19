#include <stdio.h>

int entry_point ( int ( *start )  ,  int ( *end )  ,  int ( *temptemp1 )  )   { 
  int sum ; 
  int j ; 
  int i ; 
  int count = 0 ; 
   ; 
   ; 
  i =  ( *start )  ; 
  while  ( i <=  ( *end )  )   { 
    sum = 0 ; 
    j = 1 ; 
    while  ( j <= i / 2 )   { 
      if  ( i % j == 0 )   { 
        sum += j ; 
       } 
      j++ ; 
     } 
    if  ( sum == i && i != 0 )   { 
      count++ ; 
     } 
    i++ ; 
   } 
   { 
     ( *temptemp1 )  = count ; 
     ; 
   } 
  return 0 ; 
 } 
