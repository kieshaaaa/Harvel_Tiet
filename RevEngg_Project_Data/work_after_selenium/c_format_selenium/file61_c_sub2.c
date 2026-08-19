#include <stdio.h>

int entry_point ( int ( *a )  ,  int ( *b )  ,  int ( *c )  ,  int ( *temptemp1 )  )   { 
  int largest ; 
   ; 
   ; 
   ; 
  if  (  (  ( *a )  >=  ( *b )  &&  ( *a )  >=  ( *c )  )  )   { 
    largest =  ( *a )  ; 
   }  else if  (  (  ( *b )  >=  ( *a )  &&  ( *b )  >=  ( *c )  )  )   { 
    largest =  ( *b )  ; 
   }  else  { 
    largest =  ( *c )  ; 
   } 
   { 
     ( *temptemp1 )  = largest ; 
     ; 
   } 
  return 0 ; 
 } 
