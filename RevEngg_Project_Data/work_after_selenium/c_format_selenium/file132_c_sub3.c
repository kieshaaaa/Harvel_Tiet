#include <stdio.h>

int entry_point ( int ( *num )  ,  int ( *range )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  , 
                int ( *temptemp3 )  )   { 
  int i = 1 ; 
   ; 
   ; 
  do  { 
    int multiplication =  ( *num )  * i ; 
     { 
       ( *temptemp1 )  =  ( *num )  ; 
       ( *temptemp2 )  = i ; 
       ( *temptemp3 )  = multiplication ; 
       ; 
     } 
    i++ ; 
   }  while  ( i <=  ( *range )  )  ; 
  return 0 ; 
 } 
