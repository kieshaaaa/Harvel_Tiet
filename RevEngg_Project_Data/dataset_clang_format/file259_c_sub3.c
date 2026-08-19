#include <stdio.h>
#include <string.h>

int entry_point ( char ( *word )  )   { 
  int i ; 
  int len ; 
   ; 
  len = strlen (  ( *word )  )  ; 
  for  ( i = 0 ;  i < len / 2 ;  i++ )   { 
    if  ( word [ i ]  != word [ len - 1 - i ]  )   { 
       ; 
      return 0 ; 
     } 
   }  ; 
  return 0 ; 
 } 
