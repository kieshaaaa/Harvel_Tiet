#include <stdio.h>

int entry_point ( int ( *num )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  )   { 
   ; 
  int i = 1 ; 
  int square = 1 ; 
  while  ( square <=  ( *num )  )   { 
    if  ( square ==  ( *num )  )   { 
       { 
         ( *temptemp1 )  =  ( *num )  ; 
         ; 
       } 
      return 0 ; 
     } 
    i++ ; 
    square = i * i ; 
   } 
   { 
     ( *temptemp2 )  =  ( *num )  ; 
     ; 
   } 
  return 0 ; 
 } 
