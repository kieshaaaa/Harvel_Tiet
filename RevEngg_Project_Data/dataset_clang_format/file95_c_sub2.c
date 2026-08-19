#include <stdio.h>

int entry_point ( int ( *a )  ,  int ( *b )  ,  int ( *c )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  )   { 
  int mid ; 
  int smallest ; 
  int largest ; 
   ; 
   ; 
   ; 
  mid =  ( *a )  ; 
  if  (  ( *b )  > mid )  mid =  ( *b )  ; 
  if  (  ( *c )  > mid ) 
    largest =  ( *c )  ; 
  else
    largest = mid ; 
  mid =  ( *a )  ; 
  if  (  ( *b )  < mid )  mid =  ( *b )  ; 
  if  (  ( *c )  < mid ) 
    smallest =  ( *c )  ; 
  else
    smallest = mid ; 
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
