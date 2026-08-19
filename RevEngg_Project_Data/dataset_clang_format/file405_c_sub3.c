#include <math.h>
#include <stdio.h>

int entry_point ( int ( *lower )  ,  int ( *upper )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  , 
                int ( *temptemp3 )  )   { 
   ; 
   ; 
   { 
     ( *temptemp1 )  =  ( *lower )  ; 
     ( *temptemp2 )  =  ( *upper )  ; 
     ; 
   } 
  int i =  ( *lower )  ; 
  int powSum = 1 ; 
  int digits = 0 ; 
  int sum = 0 ; 
  int temp = i ; 
  while  ( temp != 0 )   { 
    digits++ ; 
    temp /= 10 ; 
   } 
  temp = i ; 
  while  ( temp != 0 )   { 
    int remainder = temp % 10 ; 
    powSum = 1 ; 
    int j = 0 ; 
    powSum *= remainder ; 
   } 
  sum += powSum ; 
  temp /= 10 ; 
 } 
if  ( sum == i )   { 
   { 
     ( *temptemp3 )  = i ; 
     ; 
   } 
 } 
 } 
return 0 ; 
 } 
