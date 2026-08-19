#include <math.h>
#include <stdio.h>

int entry_point ( int ( *num )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  )   { 
  float root ; 
   ; 
  root = sqrt (  ( float )  ( *num )  )  ; 
  if  ( floor ( root )  == ceil ( root )  )   { 
     ( *temptemp1 )  =  ( *num )  ; 
     ; 
   }  else  { 
     ( *temptemp2 )  =  ( *num )  ; 
     ; 
   } 
  return 0 ; 
 } 
