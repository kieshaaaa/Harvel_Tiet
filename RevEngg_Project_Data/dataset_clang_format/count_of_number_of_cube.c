#include <stdio.h>

int entry_point ( int ( *limit )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  )   { 
  int count = 0 ; 
  int cube = 1 ; 
  int i ; 
   ; 
  for  ( i = 1 ;  cube <=  ( *limit )  && cube > 0 ;  i++ )   { 
    cube = i * i * i ; 
    if  ( cube <=  ( *limit )  && cube > 0 )   { 
      count = count + 1 ; 
     } 
   } 
   { 
     ( *temptemp1 )  =  ( *limit )  ; 
     ( *temptemp2 )  = count ; 
     ; 
   } 
  return 0 ; 
 } 
