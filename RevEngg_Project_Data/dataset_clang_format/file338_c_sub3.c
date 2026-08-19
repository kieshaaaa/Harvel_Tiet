#include <stdio.h>

int entry_point ( int ( *a )  ,  int ( *b )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  , 
                int ( *temptemp3 )  ,  int ( *temptemp4 )  ,  int ( *temptemp5 )  )   { 
  int result ; 
   ; 
  result =  ( *a )  +  ( *b )  ; 
   { 
     ( *temptemp1 )  = result ; 
     ; 
   } 
  result =  ( *a )  -  ( *b )  ; 
   { 
     ( *temptemp2 )  = result ; 
     ; 
   } 
  result =  ( *a )  *  ( *b )  ; 
   { 
     ( *temptemp3 )  = result ; 
     ; 
   } 
  if  (  ( *b )  != 0 )   { 
    result =  ( *a )  /  ( *b )  ; 
     { 
       ( *temptemp4 )  = result ; 
       ; 
     } 
    result =  ( *a )  %  ( *b )  ; 
     { 
       ( *temptemp5 )  = result ; 
       ; 
     } 
   }  else  { 
     ; 
   } 
  return 0 ; 
 } 
