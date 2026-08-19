#include <stdio.h>

int entry_point ( char ( *temptemp1 )  )   { 
  int cols ; 
  int rows ; 
  char star = '*' ; 
  rows = 10 ; 
  while  ( rows >= 0 )   { 
     ; 
    cols = 0 ; 
    while  ( cols < rows )   { 
       { 
         ( *temptemp1 )  = star ; 
         ; 
       } 
      cols++ ; 
     } 
    rows-- ; 
   } 
  return 0 ; 
 } 
