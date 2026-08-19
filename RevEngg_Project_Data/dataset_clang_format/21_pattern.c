#include <stdio.h>
#include <stdlib.h>

int entry_point ( int ( *maxRows )  ,  int ( *temptemp1 )  )   { 
  int maxCols ; 
  int numAtCol ; 
  int col ; 
  int row ; 
   ; 
  maxCols =  ( *maxRows )  ; 
  for  ( row = 1 ;  row <=  ( *maxRows )  ;  row++ )   { 
    numAtCol = row ; 
    for  ( col = 1 ;  col <= row ;  col++ )   { 
      numAtCol = numAtCol + 1 ; 
       { 
         ( *temptemp1 )  = numAtCol ; 
         ; 
       } 
     }  ; 
   } 
  return 0 ; 
 } 
