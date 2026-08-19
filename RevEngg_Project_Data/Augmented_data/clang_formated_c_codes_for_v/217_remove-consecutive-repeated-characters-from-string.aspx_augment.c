#include <stdio.h>

int entry_point ( char ( *text )  ,  char ( *temptemp1 )  )   { 
  int removedChars ; 
  int stringLength ; 
  int b ; 
  int a ; 
   ; 
  stringLength = 0 ; 
  while  ( text [ stringLength ]  != '\0' )   { 
    stringLength++ ; 
   } 
  removedChars = 0 ; 
  a = 0 ; 
  while  ( a <  ( stringLength - removedChars )  )   { 
    if  ( text [ a ]  == text [ a + 1 ]  )   { 
      for  ( b = a ;  b <  ( stringLength - removedChars )  ;  b++ )  text [ b ]  = text [ b + 1 ]  ; 
      removedChars++ ; 
     }  else  { 
      a++ ; 
     } 
   } 
   { 
     ( *temptemp1 )  =  ( *text )  ; 
     ; 
   } 
  return 0 ; 
 } 
