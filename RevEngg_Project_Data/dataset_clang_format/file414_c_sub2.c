#include <stdio.h>

int entry_point ( int ( *inputNumber )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  )   { 
  int currentDigit ; 
  int totalSum = 0 ; 
  int totalProduct = 1 ; 
   ; 
  for  (  ;   ( *inputNumber )  > 0 ;   ( *inputNumber )  /= 10 )   { 
    currentDigit =  ( *inputNumber )  % 10 ; 
    totalSum += currentDigit ; 
    totalProduct *= currentDigit ; 
   } 
   { 
     ( *temptemp1 )  = totalSum ; 
     ; 
   } 
   { 
     ( *temptemp2 )  = totalProduct ; 
     ; 
   } 
  return 0 ; 
 } 
