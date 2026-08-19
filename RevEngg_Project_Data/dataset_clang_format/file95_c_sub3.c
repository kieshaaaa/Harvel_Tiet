#include <stdio.h>

int entry_point ( int ( *a )  ,  int ( *b )  ,  int ( *c )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  )   { 
  int smallest ; 
  int largest ; 
   ; 
   ; 
   ; 
  largest = smallest =  ( *a )  ; 
  if  (  ( *b )  > largest )  largest =  ( *b )  ; 
  if  (  ( *c )  > largest )  largest =  ( *c )  ; 
  if  (  ( *b )  < smallest )  smallest =  ( *b )  ; 
  if  (  ( *c )  < smallest )  smallest =  ( *c )  ; 
   { 
     ( *temptemp1 )  = largest ; 
     ; 
   } 
   { 
     ( *temptemp2 )  = smallest ; 
     ; 
   } 
  return 0 ; 
 } 
