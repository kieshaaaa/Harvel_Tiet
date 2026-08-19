#include <stdio.h>
#include <stdlib.h>

int entry_point ( int ( *start )  ,  int ( *end )  ,  int ( *temptemp1 )  )   { 
  int sum ; 
  int b ; 
  int a ; 
  int numPerfect ; 
   ; 
   ; 
  numPerfect = 0 ; 
  a =  ( *start )  ; 
  while  ( a <=  ( *end )  )   { 
    sum = 0 ; 
    b = 1 ; 
    while  ( b <= a / 2 )   { 
      if  ( a % b == 0 )   { 
        sum = sum + b ; 
       } 
      b++ ; 
     } 
    if  ( sum == a && a != 0 )   { 
      numPerfect++ ; 
     } 
    a++ ; 
   } 
   { 
     ( *temptemp1 )  = numPerfect ; 
     ; 
   } 
  return 0 ; 
 } 
