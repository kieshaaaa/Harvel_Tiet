#include <stdio.h>

int entry_point ( char ( *temptemp1 )  ,  int ( *temptemp2 )  )   { 
  char str [ 20 ]  ; 
  int count = 0 ; 
  int i = 0 ; 
   ; 
  while  ( str [ i ]  != '\0' )   { 
    count++ ; 
    i++ ; 
   }  ; 
   { 
     ( *temptemp1 )  = str ; 
     ; 
   }  ; 
   { 
     ( *temptemp2 )  = count ; 
     ; 
   }  ; 
  return 0 ; 
 } 
