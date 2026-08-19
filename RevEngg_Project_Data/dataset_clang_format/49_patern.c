#include <stdio.h>
#include <stdlib.h>

int entry_point ( int ( *maxRows )  )   { 
  int maxCols ; 
   ; 
  if  (  ( *maxRows )  < 1 )   { 
     ; 
    exit ( 0 )  ; 
   } 
  maxCols =  ( *maxRows )  & 1 ?  ( *maxRows )  :  (  ( *maxRows )  += 1 )  ; 
  puts ( "\n--------------------------------------------\n" )  ; 
  int row = 1 ; 
   { 
    int col = 1 ; 
     { 
      if  ( col ==  ( maxCols + 1 )  / 2 || row ==  ( maxCols + 1 )  / 2 ) 
         ; 
      else
         ; 
     }  ; 
   }  ; 
  return 0 ; 
 } 
