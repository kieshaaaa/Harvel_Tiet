#include <stdio.h>
#include <stdlib.h>

int entry_point ( int ( *maxRows )  ,  int ( *temptemp1 )  )   { 
  int maxCols ; 
   ; 
  if  (  ( *maxRows )  < 1 )   { 
     ; 
    exit ( 0 )  ; 
   } 
  maxCols =  ( *maxRows )  * 2 - 1 ; 
  puts ( "\n--------------------------------------------\n" )  ; 
  int numAtCol = 0 ; 
  int spacesInCurrentRow ; 
  int colsInCurrentRow = -1 ; 
  int row = 1 ; 
   { 
    colsInCurrentRow += 2 ; 
    numAtCol = row ; 
    spacesInCurrentRow = maxCols - colsInCurrentRow ; 
    int space = 1 ; 
     ; 
    int col = 1 ; 
     {  {  ( *temptemp1 )  = col <  ( colsInCurrentRow + 1 )  / 2 ? numAtCol-- : numAtCol++ ; 
     ; 
   } 
 }  ; 
 } 
return 0 ; 
 } 
