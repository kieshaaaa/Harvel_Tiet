#include <math.h>
#include <stdio.h>

int entry_point ( int ( *lower )  ,  int ( *upper )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  , 
                int ( *temptemp3 )  )   { 
  int n ; 
  int remainder ; 
  int num ; 
  int temp ; 
  int i ; 
  int sum ; 
   ; 
   ; 
   { 
     ( *temptemp1 )  =  ( *lower )  ; 
     ( *temptemp2 )  =  ( *upper )  ; 
     ; 
   } 
  for  ( i =  ( *lower )  ;  i <=  ( *upper )  ;  i++ )   { 
    temp = i ; 
    num = i ; 
    n = 0 ; 
    while  ( temp != 0 )   { 
      temp = temp / 10 ; 
      n = n + 1 ; 
     } 
    temp = i ; 
    sum = 0 ; 
    while  ( temp != 0 )   { 
      remainder = temp % 10 ; 
      sum = sum + pow ( remainder ,  n )  ; 
      temp = temp + 10 ; 
     } 
    if  ( sum == num )   { 
       { 
         ( *temptemp3 )  = i ; 
         ; 
       } 
     } 
   } 
  return 0 ; 
 } 
