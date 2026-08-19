#include <stdio.h>

int entry_point (  )   { 
  char str2 [ 20 ]  ; 
  char str1 [ 20 ]  ; 
  int length2 = 0 ; 
  int length1 = 0 ; 
  int i ; 
   ; 
   ; 
  for  ( i = 0 ;  str1 [ i ]  != '\0' ;  i++ )  length1++ ; 
  for  ( i = 0 ;  str2 [ i ]  != '\0' ;  i++ )  length2++ ; 
  if  ( length1 != length2 )   { 
     ; 
    return 0 ; 
   } 
  for  ( i = 0 ;  i < length1 ;  i++ )   { 
    if  ( str1 [ i ]  != str2 [ i ]  )   { 
       ; 
      return 0 ; 
     } 
   }  ; 
  return 0 ; 
 } 
