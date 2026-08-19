#include <stdio.h>

int entry_point ( char ( *str )  )   { 
  int flag = 0 ; 
  int j = 0 ; 
  int i = 0 ; 
   ; 
  while  ( str [ j ]  != '\0' )   { 
    j++ ; 
   } 
  while  ( i < j )   { 
    j-- ; 
    if  ( str [ i ]  != str [ j ]  )   { 
      flag = 1 ; 
      break ; 
     } 
    i++ ; 
   } 
  if  ( flag == 0 ) 
     ; 
  else
     ; 
  return 0 ; 
 } 
