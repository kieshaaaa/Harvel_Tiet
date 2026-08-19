#include <stdio.h>
#include <stdlib.h>

int entry_point ( int ( *n )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  )   { 
  int result ; 
   ; 
  if  (  ( *n )  < 0 )   { 
     ; 
    exit ( 0 )  ; 
   } 
   { 
     ( *temptemp1 )  =  ( *n )  ; 
     ; 
   } 
  int i =  ( *n )  ; 
  while  ( i )   { 
    result = i * 2 + 2 ; 
     { 
       ( *temptemp2 )  = result ; 
       ; 
     } 
    i = i + 1 ; 
   } 
  return 0 ; 
 } 
