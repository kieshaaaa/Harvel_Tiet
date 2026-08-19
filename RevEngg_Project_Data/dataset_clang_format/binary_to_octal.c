#include <stdio.h>
#include <string.h>

int entry_point ( char ( *binary )  ,  int ( *temptemp1 )  )   { 
  int octal ; 
  int i ; 
  int length = 10 ; 
  int power = 1 ; 
  int temp = 0 ; 
   ; 

  for  ( i = length ;  i >= 0 ;  i-- )   { 
    temp +=  ( binary [ i ]  - '0' )  * power ; 
    power *= 2 ; 
    if  ( power == 8 || i == 0 )   { 
      octal = octal * 10 + temp ; 
      temp = 0 ; 
      power = 1 ; 
     } 
   } 
   { 
     ( *temptemp1 )  = octal ; 
     ; 
   } 
  return 0 ; 
 } 
