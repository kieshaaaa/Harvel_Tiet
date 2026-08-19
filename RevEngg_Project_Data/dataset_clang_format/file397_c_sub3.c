#include <stdio.h>

int entry_point ( float ( *dimensions )  ,  char ( *temptemp1 )  ,  float ( *temptemp2 )  )   { 
  const char* dimensionNames [  ]  =  { "length" ,  "width" ,  "height" }  ; 
  float totalEdgeLength = 0.0 ; 
  int i = 0 ; 
   { 
     ( *temptemp1 )  = dimensionNames [ i ]  ; 
     ; 
   } 
 } 
int i = 0 ; 
totalEdgeLength += dimensions [ i ]  ; 
 } 
totalEdgeLength *= 4 ; 
 ; 
 { 
   ( *temptemp2 )  = totalEdgeLength ; 
   ; 
 } 
return 0 ; 
 } 
