#include <stdio.h>

int entry_point ( char ( *inputString )  ,  char ( *temptemp1 )  ,  int ( *temptemp2 )  )   { 
  int stringLength = 0 ; 
   ; 
  for  (  ;  inputString [ stringLength ]  != '\0' ;  stringLength++ )  ; 
   { 
     ( *temptemp1 )  =  ( *inputString )  ; 
     ( *temptemp2 )  = stringLength ; 
     ; 
   } 
  return 0 ; 
 } 
