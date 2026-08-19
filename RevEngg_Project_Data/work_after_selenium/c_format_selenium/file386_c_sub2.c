#include <math.h>
#include <stdio.h>

int entry_point ( int ( *start )  ,  int ( *end )  ,  int ( *temptemp1 )  )   { 
   ; 
   ; 
  int count = 0 ; 
  int num =  ( *start )  ; 
  int sum = 0 ; 
  int digits = 0 ; 
  int n = num ; 
  for  ( n = num ;  n != 0 ;  n /= 10 ,  digits++ ) 
     ; 
  for  ( n = num ;  n != 0 ;  n /= 10 )   { 
    int digit = n % 10 ; 
    sum += pow ( digit ,  digits )  ; 
   } 
  if  ( sum == num )  count++ ; 
 } 
 { 
   ( *temptemp1 )  = count ; 
   ; 
 } 
return 0 ; 
 } 
