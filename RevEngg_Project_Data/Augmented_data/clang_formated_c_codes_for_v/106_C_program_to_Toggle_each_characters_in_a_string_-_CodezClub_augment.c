#include <stdio.h>

int entry_point ( char ( *inputString )  ,  char ( *temptemp1 )  )   { 
  int index = 0 ; 
   ; 
  while  ( inputString [ index ]  != '\0' )   { 
    if  ( inputString [ index ]  >= 'A' && inputString [ index ]  <= 'Z' ) 
      inputString [ index ]  = inputString [ index ]  + 32 ; 
    else if  ( inputString [ index ]  >= 'a' && inputString [ index ]  <= 'z' ) 
      inputString [ index ]  = inputString [ index ]  - 32 ; 
    index++ ; 
   } 
   { 
     ( *temptemp1 )  =  ( *inputString )  ; 
     ; 
   } 
  return 0 ; 
 } 
