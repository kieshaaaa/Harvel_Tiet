#include <stdio.h>

int entry_point ( char ( *confirm )  ,  float ( *degrees )  ,  float ( *temptemp1 )  )   { 
  float gradians ; 
   ; 
  if  (  ( *confirm )  == 'y' ||  ( *confirm )  == 'Y' )   { 
     ; 
    gradians =  ( *degrees )  *  ( 200.0 / 180.0 )  ; 
     { 
       ( *temptemp1 )  = gradians ; 
       ; 
     } 
   }  else  { 
     ; 
   } 
  return 0 ; 
 } 
