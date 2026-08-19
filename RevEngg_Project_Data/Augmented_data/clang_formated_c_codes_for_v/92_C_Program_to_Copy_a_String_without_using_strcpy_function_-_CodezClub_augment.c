#include <stdio.h>

int entry_point ( char ( *source_string )  ,  char ( *temptemp1 )  )   { 
  char dest_string [ 100 ]  ; 
  int index = 0 ; 
   ; 
  while  ( source_string [ index ]  != '\0' )   { 
    dest_string [ index ]  = source_string [ index ]  ; 
    index++ ; 
   } 
  dest_string [ index ]  = '\0' ; 
   { 
     ( *temptemp1 )  = dest_string ; 
     ; 
   } 
  return 0 ; 
 } 
