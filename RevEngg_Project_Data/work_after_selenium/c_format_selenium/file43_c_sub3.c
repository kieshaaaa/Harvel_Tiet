#include <stdio.h>

int entry_point ( char ( *temptemp1 )  )   { 
  char inputName [ 100 ]  ; 
   ; 
  int pos = 0 ; 
  while  ( inputName [ pos ]  != '\0' )   { 
    char ch = inputName [ pos ]  ; 
    if  ( ch == 'a' || ch == 'e' || ch == 'i' || ch == 'o' || ch == 'u' )   { 
      inputName [ pos ]  = ch - 32 ; 
     } 
    pos++ ; 
   }  ; 
   { 
     ( *temptemp1 )  = inputName ; 
     ; 
   } 
  return 0 ; 
 } 
