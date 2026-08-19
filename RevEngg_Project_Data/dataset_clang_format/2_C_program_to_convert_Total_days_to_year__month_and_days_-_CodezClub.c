#include <stdio.h>

int entry_point ( int ( *d )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  ,  int ( *temptemp3 )  )   { 
  int nd ; 
  int m ; 
  int y ; 
   ; 
  y =  ( *d )  / 365 ; 
   ( *d )  =  ( *d )  % 365 ; 
  m =  ( *d )  / 30 ; 
  nd =  ( *d )  % 30 ; 
   { 
     ( *temptemp1 )  = y ; 
     ( *temptemp2 )  = m ; 
     ( *temptemp3 )  = nd ; 
     ; 
   } 
  return 0 ; 
 } 
