#include <math.h>
#include <stdio.h>
#include <stdlib.h>

int entry_point ( int ( *start )  ,  int ( *end )  ,  int ( *temptemp1 )  )   { 
  int count = 0 ; 
  int num ; 
   ; 
   ; 
  num =  ( *start )  ; 
  while  ( num <=  ( *end )  )   { 
    int originalNum ; 
    int remainder ; 
    int n = 0 ; 
    float result = 0.0 ; 
    originalNum = num ; 
    originalNum = num ; 
    while  ( originalNum != 0 )   { 
      originalNum = originalNum / 10 ; 
      ++n ; 
     } 
    originalNum = num ; 
    while  ( originalNum != 0 )   { 
      remainder = originalNum % 10 ; 
      result = result + pow ( remainder ,  n )  ; 
      originalNum = originalNum / 10 ; 
     } 
    if  ( result == num )   { 
      count = count + 1 ; 
     } 
    num++ ; 
   } 
   { 
     ( *temptemp1 )  = count ; 
     ; 
   } 
  return 0 ; 
 } 
