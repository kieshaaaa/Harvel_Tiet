#include <stdio.h>

int entry_point ( int ( *temptemp1 )  )   { 
  char str [ 100 ]  ; 
  char ch ; 
  int length = 0 ; 
  int i = 0 ; 
  while  (  ( ch = getchar (  )  )  != '\n' && ch != EOF )   { 
    str [ i++ ]  = ch ; 
   } 
  str [ i ]  = '\0' ; 
  while  ( str [ length ]  != '\0' )   { 
    length++ ; 
   }  ; 
   { 
     ( *temptemp1 )  = length ; 
     ; 
   } 
  return 0 ; 
 } 
