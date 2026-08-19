#include <stdio.h>
#include <stdlib.h>

int entry_point ( int ( *maxRows )  )   { 
  int maxCols ; 
   ; 
  if  (  ( *maxRows )  < 1 )   { 
     ; 
    exit ( 0 )  ; 
   } 
  maxCols =  ( *maxRows )  * 2 - 1 ; 
  puts ( "\n--------------------------------------------\n" )  ; 
  int spacesInCurrentRow ; 
  int colsInCurrentRow ; 
  int row = 1 ; 
   { 
    spacesInCurrentRow =  ( row - 1 )  * 2 ; 
    colsInCurrentRow = maxCols -  ( row - 1 )  * 2 ; 
    int space = 1 ; 
     ; 
    int col = 1 ; 
     { 
      if  ( col == 1 || col == colsInCurrentRow || row == 1 ) 
         ; 
      else
         ; 
     }  ; 
   }  ; 
  return 0 ; 
 } 
