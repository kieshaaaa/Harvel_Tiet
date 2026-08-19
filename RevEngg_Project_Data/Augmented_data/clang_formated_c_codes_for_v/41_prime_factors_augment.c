#include <stdio.h>
#include <stdlib.h>

int entry_point ( int ( *n )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  )   { 
   ; 
  if  (  ( *n )  <= 0 )   { 
     ; 
    exit ( 0 )  ; 
   }  else if  (  ( *n )  == 1 )   { 
     ; 
    exit ( 0 )  ; 
   } 
   { 
     ( *temptemp1 )  =  ( *n )  ; 
     ; 
   } 
  int i = 2 ; 
  while  ( i <=  ( *n )  )   { 
    while  (  ( *n )  % i == 0 )   { 
       { 
         ( *temptemp2 )  = i ; 
         ; 
       } 
       ( *n )  /= i ; 
     } 
    i++ ; 
   }  ; 
  return 0 ; 
 } 
