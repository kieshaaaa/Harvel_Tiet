#include <stdio.h>

int entry_point ( int ( *x )  ,  int ( *y )  ,  int ( *z )  ,  int ( *temptemp1 )  )   { 
  int largest ; 
   ; 
  largest =  ( *x )  ; 
  if  (  ( *y )  > largest )  largest =  ( *y )  ; 
  if  (  ( *z )  > largest )  largest =  ( *z )  ; 
   { 
     ( *temptemp1 )  = largest ; 
     ; 
   } 
  return 0 ; 
 } 
