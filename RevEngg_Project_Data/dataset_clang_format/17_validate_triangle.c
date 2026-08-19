#include <stdio.h>

int entry_point ( float ( *l1 )  ,  float ( *l2 )  ,  float ( *l3 )  ,  int ( *temptemp1 )  , 
                int ( *temptemp2 )  )   { 
  int result ; 
   ; 
  if  (  ( *l1 )  +  ( *l2 )  >  ( *l3 )  &&  ( *l2 )  +  ( *l3 )  >  ( *l1 )  &&  ( *l1 )  +  ( *l3 )  >  ( *l2 )  )   { 
    result = 1 ; 
     { 
       ( *temptemp1 )  = result ; 
       ; 
     } 
   }  else  { 
    result = 0 ; 
     { 
       ( *temptemp2 )  = result ; 
       ; 
     } 
   } 
  return 0 ; 
 } 
