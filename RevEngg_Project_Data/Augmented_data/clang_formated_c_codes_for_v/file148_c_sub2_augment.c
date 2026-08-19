#include <stdio.h>

int entry_point ( int ( *num )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  )   { 
  int counter = 0 ; 
  int cubicNum = 1 ; 
   ; 
  if  (  ( *num )  <= 0 )   { 
     ; 
    return 1 ; 
   } 
  for  ( counter = 0 ;  counter < 3 ;  counter++ )   { 
    cubicNum *=  ( *num )  ; 
   } 
   { 
     ( *temptemp1 )  =  ( *num )  ; 
     ( *temptemp2 )  = cubicNum ; 
     ; 
   } 
  return 0 ; 
 } 
