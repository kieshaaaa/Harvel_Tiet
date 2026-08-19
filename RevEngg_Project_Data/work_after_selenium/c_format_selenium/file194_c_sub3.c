#include <stdio.h>

int entry_point ( char ( *temptemp1 )  )   { 
  char ch ; 
  char line [ 150 ]  ; 
  int j = 0 ; 
  int i = 0 ; 
   ; 
  while  (  ( ch = getchar (  )  )  != '\n' && i < 149 )   { 
    if  (  ( ch >= 'a' && ch <= 'z' )  ||  ( ch >= 'A' && ch <= 'Z' )  )   { 
      line [ j++ ]  = ch ; 
     } 
    i++ ; 
   } 
  line [ j ]  = '\0' ; 
   ; 
   { 
     ( *temptemp1 )  = line ; 
     ; 
   }  ; 
  return 0 ; 
 } 
