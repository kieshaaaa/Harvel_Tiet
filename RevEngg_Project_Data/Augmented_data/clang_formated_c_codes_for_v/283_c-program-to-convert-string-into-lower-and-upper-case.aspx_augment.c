#include <stdio.h>

void toLower ( char *str )  ; 
void toUpper ( char *str )  ; 
int entry_point ( char ( *temptemp1 )  ,  char ( *temptemp2 )  )   { 
  char inputString [ 100 ]  ; 
   ; 
  toLower ( inputString )  ; 
   { 
     ( *temptemp1 )  = inputString ; 
     ; 
   } 
  toUpper ( inputString )  ; 
   { 
     ( *temptemp2 )  = inputString ; 
     ; 
   } 
  return 0 ; 
 } 
void toLower ( char *str )   { 
  int i = 0 ; 
  for  (  ;  str [ i ]  != '\0' ;  ++i )   { 
    if  ( str [ i ]  >= 'A' && str [ i ]  <= 'Z' )   { 
      str [ i ]  = str [ i ]  + 32 ; 
     } 
   } 
 } 
void toUpper ( char *str )   { 
  int i = 0 ; 
  for  (  ;  str [ i ]  != '\0' ;  ++i )   { 
    if  ( str [ i ]  >= 'a' && str [ i ]  <= 'z' )   { 
      str [ i ]  = str [ i ]  - 32 ; 
     } 
   } 
 } 
