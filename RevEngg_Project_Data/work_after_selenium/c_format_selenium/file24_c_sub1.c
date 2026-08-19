#include <stdio.h>

int entry_point ( float ( *a )  ,  float ( *b )  ,  float ( *c )  ,  float ( *d )  ,  float ( *e )  , 
                float ( *temptemp1 )  )   { 
  float average ; 
   ; 
  average =  (  ( *a )  +  ( *b )  +  ( *c )  +  ( *d )  +  ( *e )  )  / 5 ; 
   { 
     ( *temptemp1 )  = average ; 
     ; 
   } 
  return 0 ; 
 } 
