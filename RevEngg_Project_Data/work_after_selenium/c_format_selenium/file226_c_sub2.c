#include <math.h>
#include <stdio.h>

int entry_point ( int ( *num )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  )   { 
  float root ; 
  int squaredRoot ; 
   ; 
  root = sqrt (  ( float )  ( *num )  )  ; 
  squaredRoot = round ( root )  ; 
  if  (  ( *num )  == squaredRoot * squaredRoot )   { 
     ( *temptemp1 )  =  ( *num )  ; 
     ; 
   }  else  { 
     ( *temptemp2 )  =  ( *num )  ; 
     ; 
   } 
  return 0 ; 
 } 
