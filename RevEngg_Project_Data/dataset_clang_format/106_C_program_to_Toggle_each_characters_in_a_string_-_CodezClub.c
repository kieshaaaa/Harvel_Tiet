#include <stdio.h>

int entry_point ( char ( *str )  ,  char ( *temptemp1 )  )   { 
  int counter ; 
   ; 
  for  ( counter = 0 ;  str [ counter ]  != NULL ;  counter++ )   { 
    if  ( str [ counter ]  >= 'A' && str [ counter ]  <= 'Z' ) 
      str [ counter ]  = str [ counter ]  + 32 ; 
    else if  ( str [ counter ]  >= 'a' && str [ counter ]  <= 'z' ) 
      str [ counter ]  = str [ counter ]  - 32 ; 
   } 
   { 
     ( *temptemp1 )  =  ( *str )  ; 
     ; 
   } 
  return 0 ; 
 } 
