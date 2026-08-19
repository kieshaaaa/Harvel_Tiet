#include <stdio.h>

int entry_point ( char ( *str )  ,  char ( *temptemp1 )  )   { 
  char text [ 100 ]  ; 
  int j = 0 ; 
  int i = 0 ; 
   ; 
  while  ( str [ i ]  != '\0' )  i++ ; 
  while  ( i > 0 )   { 
    text [ j ]  = str [ --i ]  ; 
    ++j ; 
   } 
  text [ j ]  = '\0' ; 
   ; 
  for  ( i = 0 ;  text [ i ]  != '\0' ;  i++ )   { 
    if  ( text [ i + 1 ]  == ' ' || text [ i + 1 ]  == NULL )   { 
      for  ( j = i ;  j >= 0 && text [ j ]  != ' ' ;  j-- )   { 
         ( *temptemp1 )  = text [ j ]  ; 
         ; 
       }  ; 
     } 
   } 
  return 0 ; 
 } 
