#include <stdio.h>

int entry_point ( float ( *a )  ,  float ( *b )  ,  float ( *c )  ,  float ( *d )  ,  float ( *temptemp1 )  )   { 
  float sumCD ; 
  float sumAB ; 
  float result ; 
   ; 
  sumAB =  ( *a )  +  ( *b )  ; 
  sumCD =  ( *c )  +  ( *d )  ; 
  if  ( sumCD == 0 )   { 
     ; 
    return -1 ; 
   } 
  result = sumAB / sumCD ; 
   { 
     ( *temptemp1 )  = result ; 
     ; 
   } 
  return 0 ; 
 } 
