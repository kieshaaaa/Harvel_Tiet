#include <stdio.h>
#include <stdlib.h>

int entry_point ( int ( *maxRows )  )   { 
  int maxCols ; 
   ; 
  if  (  ( *maxRows )  < 1 )   { 
     ; 
    exit ( 0 )  ; 
   } 
  maxCols =  ( *maxRows )  + 1 ; 
  puts ( "\n--------------------------------------------\n" )  ; 
  int vary = 1 ; 
  int row = 1 ; 
   { 
    int col = 1 ; 
     { 
      if  ( col <= vary || col >= maxCols + 1 - vary ) 
         ; 
      else
         ; 
     } 
    row < maxCols / 2 ? vary++ : vary-- ; 
    if  (  ( *maxRows )  % 2 == 0 && row == maxCols / 2 )  vary++ ; 
     ; 
   }  ; 
  return 0 ; 
 } 
