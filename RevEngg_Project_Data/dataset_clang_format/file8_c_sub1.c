#include <stdio.h>

void calculateAverage (  )   { 
  int numbers [ 5 ]  =  { 4 ,  7 ,  8 ,  9 ,  10 }  ; 
  int sum = 0 ; 
  double average ; 
  int i ; 
  for  ( i = 0 ;  i < 5 ;  i++ )   { 
    sum += numbers [ i ]  ; 
   } 
  average = sum / 5.0 ; 
   ; 
 } 
int entry_point (  )   { 
  calculateAverage (  )  ; 
  return 0 ; 
 } 
