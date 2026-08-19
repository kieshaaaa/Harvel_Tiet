#include <stdio.h>

int entry_point ( int ( *count )  ,  int ( *array )  ,  int ( *temptemp1 )  )   { 
  int flag ; 
  int divFactor = 1 ; 
  int maxDigit = 0 ; 
  int temp ; 
   ; 
   ; 
  int i = 0 ; 
   ; 
   ; 
  int digits = 0 ; 
  int t = array [ i ]  ; 
  if  ( digits > maxDigit )  maxDigit = digits ; 
 } 
int digit = 0 ; 
do  { 
  flag = 0 ; 
  int i = 0 ; 
  if  (  ( array [ i ]  / divFactor )  % 10 >  ( array [ i + 1 ]  / divFactor )  % 10 )   { 
    temp = array [ i ]  ; 
    array [ i ]  = array [ i + 1 ]  ; 
    array [ i + 1 ]  = temp ; 
    flag = 1 ; 
   } 
 } 
 } 
while  ( flag ) 
   ; 
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
