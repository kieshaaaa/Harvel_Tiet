#include <math.h>
#include <stdio.h>

int entry_point ( int ( *a )  ,  int ( *b )  ,  int ( *c )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  )   { 
  int root2 ; 
  int root1 ; 
   ; 
   ; 
   ; 
  root1 = - ( *b )  +  ( sqrt (  ( *b )  ^ 2 - 4 *  ( *a )  *  ( *c )  )  )  / 2 *  ( *a )  ; 
  root2 = - ( *b )  -  ( sqrt (  ( *b )  ^ 2 - 4 *  ( *a )  *  ( *c )  )  )  / 2 *  ( *a )  ; 
   { 
     ( *temptemp1 )  = root1 ; 
     ; 
   } 
   { 
     ( *temptemp2 )  = root2 ; 
     ; 
   } 
  return 0 ; 
 } 
