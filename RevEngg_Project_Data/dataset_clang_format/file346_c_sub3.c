#include <stdio.h>

int entry_point ( int ( *a )  ,  int ( *b )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  )   { 
  int temp ; 
   ; 
   ; 
  temp =  ( *a )  ; 
   ( *a )  =  ( *b )  ; 
   ( *b )  = temp ; 
   { 
     ( *temptemp1 )  =  ( *a )  ; 
     ( *temptemp2 )  =  ( *b )  ; 
     ; 
   } 
  return 0 ; 
 } 
