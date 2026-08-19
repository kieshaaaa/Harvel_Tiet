#include <stdio.h>

int entry_point ( int ( *input )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  )   { 
  int counter = 0 ; 
  int i = 0 ; 
  int values [ 100 ]  ; 
  i = 0 ; 
  while  (  ( *input )  != -1 )   { 
     ; 
    counter += values [ i++ ]  =  ( *input )  ; 
   } 
   { 
     ( *temptemp1 )  = counter ; 
     ; 
   }  ; 
  i = 0 ; 
  while  ( i < counter )   { 
     { 
       ( *temptemp2 )  = values [ i ]  ; 
       ; 
     } 
    i++ ; 
   }  ; 
  return 0 ; 
 } 
