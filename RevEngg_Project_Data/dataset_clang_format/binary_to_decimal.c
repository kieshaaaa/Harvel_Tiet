#include <math.h>
#include <stdio.h>
#include <string.h>

int entry_point ( char ( *binary )  ,  int ( *temptemp1 )  )   { 
  int decimal ; 
  int i ; 
   ; 
  int length = 10 ; 
  for  ( i = 0 ;  i < length ;  i++ )   { 
    if  ( binary [ i ]  == '1' )   { 
      decimal = decimal + pow ( 2 ,  length - i - 1 )  ; 
     } 
   } 
   { 
     ( *temptemp1 )  = decimal ; 
     ; 
   } 
  return 0 ; 
 } 
