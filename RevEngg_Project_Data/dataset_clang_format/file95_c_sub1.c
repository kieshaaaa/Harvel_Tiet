#include <stdio.h>

int entry_point ( int ( *a )  ,  int ( *b )  ,  int ( *c )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  )   { 
  int smallest ; 
  int largest ; 
   ; 
   ; 
   ; 
  largest =
       (  ( *a )  >  ( *b )  )  ?  (  ( *a )  >  ( *c )  ?  ( *a )  :  ( *c )  )  :  (  ( *b )  >  ( *c )  ?  ( *b )  :  ( *c )  )  ; 
  smallest =
       (  ( *a )  <  ( *b )  )  ?  (  ( *a )  <  ( *c )  ?  ( *a )  :  ( *c )  )  :  (  ( *b )  <  ( *c )  ?  ( *b )  :  ( *c )  )  ; 
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
