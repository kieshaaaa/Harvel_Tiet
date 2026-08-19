#include <stdio.h>

int entry_point (  )   { 
  char str2 [ 20 ]  ; 
  char str1 [ 20 ]  ; 
  int equal = 1 ; 
  int i ; 
   ; 
   ; 
  for  ( i = 0 ;  str1 [ i ]  != '\0' || str2 [ i ]  != '\0' ;  i++ )   { 
    if  ( str1 [ i ]  != str2 [ i ]  )   { 
      equal = 0 ; 
      break ; 
     } 
   } 
  if  ( equal && str1 [ i ]  == '\0' && str2 [ i ]  == '\0' )   { 
     ; 
   }  else  { 
     ; 
   } 
  return 0 ; 
 } 
