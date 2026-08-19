#include <stdio.h>

int entry_point ( int ( *num )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  )   { 
   ; 
  int odd = 1 ; 
  int square = 0 ; 
  while  (  ( *num )  >= odd )   { 
     ( *num )  -= odd ; 
    odd += 2 ; 
    square++ ; 
   } 
  if  (  ( *num )  == 0 )   { 
     ( *temptemp1 )  = square * square ; 
     ; 
   }  else  { 
     ( *temptemp2 )  = square * square +  ( *num )  ; 
     ; 
   } 
  return 0 ; 
 } 
