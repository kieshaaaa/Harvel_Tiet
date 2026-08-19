#include <stdio.h>

int entry_point ( int ( *count )  ,  int ( *array )  ,  int ( *temptemp1 )  )   { 
  int divFactor ; 
  int maxDigit = 1 ; 
  int temp ; 
   ; 
   ; 
  int i = 0 ; 
   ; 
   ; 
  int t = array [ i ]  ; 
 } 
for  ( divFactor = maxDigit / 10 ;  divFactor >= 1 ;  divFactor /= 10 )   { 
  int i = 0 ; 
  int j = i + 1 ; 
  if  (  ( array [ i ]  / divFactor )  % 10 >  ( array [ j ]  / divFactor )  % 10 )   { 
    temp = array [ i ]  ; 
    array [ i ]  = array [ j ]  ; 
    array [ j ]  = temp ; 
   } 
 } 
 } 
 } 
 ; 
int i = 0 ; 
 { 
   ( *temptemp1 )  = array [ i ]  ; 
   ; 
 } 
 } 
 ; 
return 0 ; 
 } 
