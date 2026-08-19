#include <stdio.h>

int entry_point ( int ( *max_val )  ,  int ( *temptemp1 )  )   { 
  int num_squares = 0 ; 
  int current_square = 1 ; 
  int i = 1 ; 
   ; 
  while  ( current_square <=  ( *max_val )  )   { 
    current_square = i * i ; 
    if  ( current_square <=  ( *max_val )  )   { 
      num_squares++ ; 
     }  else  { 
      break ; 
     } 
    i++ ; 
   } 
   { 
     ( *temptemp1 )  = num_squares ; 
     ; 
   } 
  return 0 ; 
 } 
