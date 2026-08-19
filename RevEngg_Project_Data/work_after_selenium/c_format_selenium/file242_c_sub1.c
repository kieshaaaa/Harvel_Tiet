#include <stdio.h>

int entry_point ( int ( *a )  ,  int ( *b )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  , 
                int ( *temptemp3 )  ,  int ( *temptemp4 )  )   { 
  int temp ; 
   ; 
   ; 
   ; 
   { 
     ( *temptemp1 )  =  ( *a )  ; 
     ( *temptemp2 )  =  ( *b )  ; 
     ; 
   } 
  temp =  ( *a )  ; 
   ( *a )  =  ( *b )  ; 
   ( *b )  = temp ; 
   ; 
   { 
     ( *temptemp3 )  =  ( *a )  ; 
     ( *temptemp4 )  =  ( *b )  ; 
     ; 
   } 
  return 0 ; 
 } 
