#include <stdio.h>

int entry_point ( char ( *str1 )  ,  char ( *str2 )  )   { 
  int c = 0 ; 
  int i = 0 ; 
   ; 
   ; 
   ; 
  puts (  ( *str1 )  )  ; 
  puts (  ( *str2 )  )  ; 
  while  (  ( str1 [ i ]  != '\0' )  ||  ( str2 [ i ]  != '\0' )  )   { 
    if  ( str1 [ i ]  != str2 [ i ]  )  c++ ; 
    i++ ; 
   } 
  if  ( c == 0 ) 
    puts ( "\nStrings are equal.\n" )  ; 
  else
    puts ( "\nStrings are not equal.\n" )  ; 
  return 0 ; 
 } 
