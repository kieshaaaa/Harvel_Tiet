#include <stdio.h>

int entry_point ( int ( *a )  ,  int ( *b )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  , 
                int ( *temptemp3 )  )   { 
  int diff ; 
   ; 
   ; 
  int xor =  ( *a )  ^  ( *b )  ; 
  int and =  ( *a )  &  ( *b )  ; 
  diff = xor+ ( and << 1 )  ; 
  if  (  ( *a )  <  ( *b )  )   { 
    diff = -diff ; 
   } 
   { 
     ( *temptemp1 )  =  ( *a )  ; 
     ( *temptemp2 )  =  ( *b )  ; 
     ( *temptemp3 )  = diff ; 
     ; 
   } 
  return 0 ; 
 } 
