#include <stdio.h>

int entry_point ( char ( *binary )  ,  int ( *temptemp1 )  )   { 
  int decimal = 0 ; 
   ; 
  int i = 0 ; 
  while  ( binary [ i ]  != '\0' )  i++ ; 
  int length = i ; 
  for  ( i = 0 ;  i < length ;  i++ )   { 
    if  ( binary [ i ]  == '1' )   { 
      int power = 1 ; 
      int j = 1 ; 
      power *= 2 ; 
     } 
    decimal += power ; 
   } 
 }  ; 
 { 
   ( *temptemp1 )  = decimal ; 
   ; 
 } 
return 0 ; 
 } 
