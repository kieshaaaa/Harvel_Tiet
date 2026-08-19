#include <stdio.h>

int entry_point ( int ( *temptemp1 )  )   { 
  char str [ 100 ]  ; 
  int length = 0 ; 
  while  ( scanf ( "%c" ,  &str [ length ]  )  && str [ length ]  != '\n' )   { 
    length++ ; 
   } 
  str [ length ]  = '\0' ; 
  length = 0 ; 
  while  ( str [ length ]  != '\0' )   { 
    length++ ; 
   }  ; 
   { 
     ( *temptemp1 )  = length ; 
     ; 
   } 
  return 0 ; 
 } 
