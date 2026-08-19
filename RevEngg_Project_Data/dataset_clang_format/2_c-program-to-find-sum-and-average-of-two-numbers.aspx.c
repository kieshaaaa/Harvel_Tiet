#include <stdio.h>

int entry_point ( int ( *a )  ,  int ( *b )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  , 
                int ( *temptemp3 )  ,  int ( *temptemp4 )  ,  int ( *temptemp5 )  , 
                float ( *temptemp6 )  )   { 
  int sum ; 
  float avg ; 
   ; 
   ; 
  sum =  ( *a )  +  ( *b )  ; 
  avg =  ( float )  (  ( *a )  +  ( *b )  )  / 2 ; 
   { 
     ( *temptemp1 )  =  ( *a )  ; 
     ( *temptemp2 )  =  ( *b )  ; 
     ( *temptemp3 )  = sum ; 
     ; 
   } 
   { 
     ( *temptemp4 )  =  ( *a )  ; 
     ( *temptemp5 )  =  ( *b )  ; 
     ( *temptemp6 )  = avg ; 
     ; 
   } 
  return 0 ; 
 } 
