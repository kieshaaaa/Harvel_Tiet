#include <stdio.h>

int entry_point ( char ( *str1 )  ,  char ( *str2 )  )   { 
  int j = 0 ; 
  int i = 0 ; 
   ; 
   ; 
   ; 
  puts (  ( *str1 )  )  ; 
  puts (  ( *str2 )  )  ; 
  while  ( str1 [ i ]  != '\0' )   { 
    i++ ; 
   } 
  while  ( str2 [ j ]  != '\0' )   { 
    str1 [ i++ ]  = str2 [ j++ ]  ; 
   } 
  str1 [ i ]  = '\0' ; 
   ; 
  puts (  ( *str1 )  )  ; 
  return 0 ; 
 } 
