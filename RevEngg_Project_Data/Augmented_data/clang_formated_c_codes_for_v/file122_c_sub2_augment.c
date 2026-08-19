#include <stdio.h>

int entry_point ( int ( *num )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  )   { 
  int oddNum = 0 ; 
  int j = 1 ; 
  int count = 0 ; 
   ; 
  for  (  ;  count <  ( *num )  ;  j++ )   { 
    if  ( j % 2 != 0 )   { 
      oddNum = j ; 
      count++ ; 
     } 
   }  ; 
   { 
     ( *temptemp1 )  =  ( *num )  ; 
     ; 
   }  ; 
   { 
     ( *temptemp2 )  = oddNum ; 
     ; 
   } 
  return 0 ; 
 } 
