#include <stdio.h>

int entry_point ( int ( *num )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  )   { 
  int result ; 
   ; 
  result =  ( *num )  & 1 ; 
  if  ( result == 0 )   { 
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
