#include <stdio.h>

int entry_point ( int ( *a )  ,  int ( *b )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  , 
                int ( *temptemp3 )  ,  int ( *temptemp4 )  ,  int ( *temptemp5 )  )   { 
   ; 
   { 
     ( *temptemp1 )  =  ( *a )  +  ( *b )  ; 
     ; 
   } 
   { 
     ( *temptemp2 )  =  ( *a )  -  ( *b )  ; 
     ; 
   } 
   { 
     ( *temptemp3 )  =  ( *a )  *  ( *b )  ; 
     ; 
   } 
   { 
     ( *temptemp4 )  =  ( *a )  /  ( *b )  ; 
     ; 
   } 
   { 
     ( *temptemp5 )  =  ( *a )  %  ( *b )  ; 
     ; 
   } 
  return 0 ; 
 } 
