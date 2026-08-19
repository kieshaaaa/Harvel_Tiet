#include <stdio.h>

int entry_point ( int ( *limit )  ,  int ( *temptemp1 )  )   { 
  int count = 0 ; 
  int square = 1 ; 
  int i ; 
   ; 
  for  ( i = 1 ;  square <=  ( *limit )  ;  i++ )   { 
    square = i * i ; 
    if  ( square <=  ( *limit )  )   { 
      count = count + 1 ; 
     }  else  { 
      break ; 
     } 
   } 
   { 
     ( *temptemp1 )  = count ; 
     ; 
   } 
  return 0 ; 
 } 
