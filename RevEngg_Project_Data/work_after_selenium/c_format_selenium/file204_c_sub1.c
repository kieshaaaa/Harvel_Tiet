#include <stdio.h>

int entry_point ( int ( *n )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  )   { 
  int nthHexagonal ; 
   ; 
  if  (  ( *n )  > 0 )   { 
    nthHexagonal = 2 *  ( *n )  *  ( *n )  -  ( *n )  ; 
     { 
       ( *temptemp1 )  =  ( *n )  ; 
       ( *temptemp2 )  = nthHexagonal ; 
       ; 
     } 
   }  else  { 
     ; 
    return 1 ; 
   } 
  return 0 ; 
 } 
