#include <stdio.h>

int entry_point ( char ( *str )  ,  char ( *temptemp1 )  )   { 
  int j ; 
  int i ; 
   ; 
  for  ( i = 0 ,  j = 1 ;  str [ j ]  != '\0' ;  j++ )   { 
    if  ( str [ j ]  != str [ i ]  )   { 
      i++ ; 
      str [ i ]  = str [ j ]  ; 
     } 
   } 
  str [ i + 1 ]  = '\0' ; 
   ; 
   { 
     ( *temptemp1 )  =  ( *str )  ; 
     ; 
   } 
  return 0 ; 
 } 
