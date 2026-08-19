#include <stdio.h>

int entry_point ( int ( *a )  ,  int ( *b )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  )   { 
   ; 
   ; 
   ( *a )  =  ( *a )  +  ( *b )  ; 
   ( *b )  =  ( *a )  -  ( *b )  ; 
   ( *a )  =  ( *a )  -  ( *b )  ; 
   { 
     ( *temptemp1 )  =  ( *a )  ; 
     ( *temptemp2 )  =  ( *b )  ; 
     ; 
   } 
  return 0 ; 
 } 
