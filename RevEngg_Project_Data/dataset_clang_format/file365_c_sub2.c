#include <stdio.h>
#include <stdlib.h>

int entry_point ( int ( *a )  ,  int ( *b )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  , 
                int ( *temptemp3 )  )   { 
  int diff ; 
   ; 
   ; 
  diff = abs (  ( *a )  -  ( *b )  )  ; 
   ; 
   { 
     ( *temptemp1 )  =  ( *a )  ; 
     ; 
   }  ; 
   { 
     ( *temptemp2 )  =  ( *b )  ; 
     ; 
   }  ; 
   { 
     ( *temptemp3 )  = diff ; 
     ; 
   } 
  return 0 ; 
 } 
