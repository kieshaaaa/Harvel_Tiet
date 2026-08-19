#include <stdio.h>

int entry_point ( int ( *num )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  )   { 
  int result ; 
   ; 
  result =  (  ( *num )  % 2 == 0 )  ? 1 : 0 ; 
  if  ( result == 1 )   { 
     { 
       ( *temptemp1 )  =  ( *num )  ; 
       ; 
     } 
   }  else  { 
     { 
       ( *temptemp2 )  =  ( *num )  ; 
       ; 
     } 
   } 
  return 0 ; 
 } 
