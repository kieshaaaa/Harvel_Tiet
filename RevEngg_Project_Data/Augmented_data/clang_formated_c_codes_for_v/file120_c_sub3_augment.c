#include <stdio.h>

int entry_point ( float ( *temptemp1 )  ,  float ( *temptemp2 )  )   { 
  float num [ 5 ]  =  { 1.0 ,  2.0 ,  3.0 ,  4.0 ,  5.0 }  ; 
  float sum = 0.0 ; 
  float avg ; 
  int j ; 
  j = 0 ; 
  while  ( j < 5 )   { 
    sum += num [ j ]  ; 
    j++ ; 
   } 
  avg = sum / 5 ; 
   { 
     ( *temptemp1 )  = sum ; 
     ; 
   } 
   { 
     ( *temptemp2 )  = avg ; 
     ; 
   } 
  return 0 ; 
 } 
