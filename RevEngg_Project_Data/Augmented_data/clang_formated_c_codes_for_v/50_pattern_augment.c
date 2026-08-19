#include <stdio.h>
#include <stdlib.h>

int entry_point ( int ( *numRows )  ,  int ( *temptemp1 )  )   { 
  int numCols ; 
   ; 
  if  (  ( *numRows )  < 1 )   { 
     ; 
    exit ( 0 )  ; 
   } 
  numCols =  ( *numRows )  * 2 - 1 ; 
  puts ( "\n--------------------------------------------\n" )  ; 
  int valAtCol = 0 ; 
  int spacesInRow ; 
  int colsInRow = -1 ; 
  int row = 1 ; 
  while  ( row <=  ( *numRows )  )   { 
    colsInRow += 2 ; 
    valAtCol = row ; 
    spacesInRow = numCols - colsInRow ; 
    int space = 1 ; 
    while  ( space <= spacesInRow / 2 )   { 
       ; 
      space++ ; 
     } 
    int col = 1 ; 
    while  ( col <= colsInRow )   { 
       { 
         ( *temptemp1 )  = col <  ( colsInRow + 1 )  / 2 ? valAtCol-- : valAtCol++ ; 
         ; 
       } 
      col++ ; 
     }  ; 
    row++ ; 
   } 
  return 0 ; 
 } 
