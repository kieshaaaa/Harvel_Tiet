#include <stdio.h>

int entry_point ( int ( *num )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  )   { 
  int cube ; 
  int square ; 
   ; 
  if  (  ( *num )  <= 0 )   { 
     ; 
    return 1 ; 
   } 
  square =  ( *num )  *  ( *num )  ; 
  cube = square *  ( *num )  ; 
   { 
     ( *temptemp1 )  =  ( *num )  ; 
     ( *temptemp2 )  = cube ; 
     ; 
   } 
  return 0 ; 
 } 
