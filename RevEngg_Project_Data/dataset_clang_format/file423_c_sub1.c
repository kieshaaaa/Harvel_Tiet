#include <stdio.h>

int entry_point ( int ( *a )  ,  int ( *b )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  , 
                int ( *temptemp3 )  )   { 
  int diff ; 
   ; 
   ; 
  diff =  ( *a )  >  ( *b )  ?  ( *a )  -  ( *b )  :  ( *b )  -  ( *a )  ; 
   { 
     ( *temptemp1 )  =  ( *a )  ; 
     ( *temptemp2 )  =  ( *b )  ; 
     ( *temptemp3 )  = diff ; 
     ; 
   } 
  return 0 ; 
 } 
