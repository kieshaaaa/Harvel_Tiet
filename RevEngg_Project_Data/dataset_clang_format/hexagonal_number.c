#include <stdio.h>

int entry_point ( int ( *n )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  )   { 
  int nthHexagonal ; 
   ; 
  if  (  ( *n )  <= 0 )   { 
     ; 
    return 1 ; 
   } 
  nthHexagonal =  ( *n )  *  ( 2 *  ( *n )  - 1 )  ; 
   { 
     ( *temptemp1 )  =  ( *n )  ; 
     ( *temptemp2 )  = nthHexagonal ; 
     ; 
   } 
  return 0 ; 
 } 
