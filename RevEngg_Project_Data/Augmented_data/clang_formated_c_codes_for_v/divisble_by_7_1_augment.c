#include <stdio.h>

int entry_point ( int ( *num )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  )   { 
  int tmp ; 
  int res ; 
   ; 
  tmp =  ( *num )  ; 
  for  (  ;  tmp >= 7 ;  tmp -= 7 )  ; 
  if  ( tmp == 0 )   { 
    res =  ( *num )  + 1 ; 
     { 
       ( *temptemp1 )  = res ; 
       ; 
     } 
   }  else  { 
    res =  ( *num )  + 2 ; 
     { 
       ( *temptemp2 )  = res ; 
       ; 
     } 
   } 
  return 0 ; 
 } 
