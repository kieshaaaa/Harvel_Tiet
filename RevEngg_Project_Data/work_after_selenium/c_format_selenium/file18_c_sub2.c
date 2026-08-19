#include <stdio.h>

int entry_point ( int ( *x )  ,  int ( *y )  ,  int ( *z )  ,  int ( *temptemp1 )  )   { 
  int largest ; 
   ; 
  if  (  ( *x )  >  ( *y )  )   { 
    if  (  ( *x )  >  ( *z )  ) 
      largest =  ( *x )  ; 
    else
      largest =  ( *z )  ; 
   }  else  { 
    if  (  ( *y )  >  ( *z )  ) 
      largest =  ( *y )  ; 
    else
      largest =  ( *z )  ; 
   } 
   { 
     ( *temptemp1 )  = largest ; 
     ; 
   } 
  return 0 ; 
 } 
