#include <stdio.h>

int entry_point ( char ( *str )  ,  char ( *temptemp1 )  )   { 
  int k = 0 ; 
  int i ; 
   ; 
  for  ( i = 1 ;  str [ i ]  != '\0' ;  i++ )   { 
    if  ( str [ k ]  != str [ i ]  )   { 
      k++ ; 
      str [ k ]  = str [ i ]  ; 
     } 
   } 
  str [ k + 1 ]  = '\0' ; 
   ; 
   { 
     ( *temptemp1 )  =  ( *str )  ; 
     ; 
   } 
  return 0 ; 
 } 
