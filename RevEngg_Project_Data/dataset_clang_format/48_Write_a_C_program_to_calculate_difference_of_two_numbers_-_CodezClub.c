#include <stdio.h>

int entry_point ( int ( *a )  ,  int ( *b )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  , 
                int ( *temptemp3 )  )   { 
  int diff ; 
   ; 
   ; 
  if  (  ( *a )  >  ( *b )  ) 
    diff =  ( *a )  -  ( *b )  ; 
  else
    diff =  ( *b )  -  ( *a )  ; 
   { 
     ( *temptemp1 )  =  ( *a )  ; 
     ( *temptemp2 )  =  ( *b )  ; 
     ( *temptemp3 )  = diff ; 
     ; 
   } 
  return 0 ; 
 } 
