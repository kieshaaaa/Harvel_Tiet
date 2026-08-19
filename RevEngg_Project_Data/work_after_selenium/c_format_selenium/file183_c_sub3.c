#include <stdio.h>

int entry_point ( int ( *a )  ,  int ( *b )  ,  int ( *c )  ,  int ( *temptemp1 )  )   { 
  int largest ; 
   ; 
   ; 
   ; 
  largest =  ( *a )  ; 
  if  (  ( *b )  > largest )   { 
    largest =  ( *b )  ; 
   } 
  if  (  ( *c )  > largest )   { 
    largest =  ( *c )  ; 
   } 
   { 
     ( *temptemp1 )  = largest ; 
     ; 
   } 
  return 0 ; 
 } 
