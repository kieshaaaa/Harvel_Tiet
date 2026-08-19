#include <stdio.h>

int entry_point ( float ( *lengthInCm )  ,  float ( *temptemp1 )  )   { 
  float lengthInM ; 
   ; 
  lengthInM =  ( *lengthInCm )  / 100.0 ; 
   { 
     ( *temptemp1 )  = lengthInM ; 
     ; 
   }  ; 
  while  ( getchar (  )  != '\n' ) 
     ; 
  getchar (  )  ; 
  return 0 ; 
 } 
