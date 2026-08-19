#include <stdio.h>

int entry_point (  )   { 
  char str2 [ 20 ]  ; 
  char str1 [ 20 ]  ; 
  int diff = 0 ; 
  int i = 0 ; 
   ; 
   ; 
  while  ( str1 [ i ]  != '\0' || str2 [ i ]  != '\0' )   { 
    if  ( str1 [ i ]  != str2 [ i ]  )   { 
      diff = 1 ; 
      break ; 
     } 
    i++ ; 
   } 
  if  ( !diff && str1 [ i ]  == '\0' && str2 [ i ]  == '\0' )   { 
     ; 
   }  else  { 
     ; 
   } 
  return 0 ; 
 } 
