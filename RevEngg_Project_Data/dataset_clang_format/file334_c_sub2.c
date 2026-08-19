#include <stdio.h>

int entry_point ( char ( *str )  ,  char ( *temptemp1 )  )   { 
  int j = 0 ; 
  int i = 0 ; 
  char lastChar = '\0' ; 
   ; 
  while  ( str [ i ]  != '\0' )   { 
    if  ( str [ i ]  != lastChar )   { 
      str [ j++ ]  = str [ i ]  ; 
      lastChar = str [ i ]  ; 
     } 
    i++ ; 
   } 
  str [ j ]  = '\0' ; 
   ; 
   { 
     ( *temptemp1 )  =  ( *str )  ; 
     ; 
   } 
  return 0 ; 
 } 
