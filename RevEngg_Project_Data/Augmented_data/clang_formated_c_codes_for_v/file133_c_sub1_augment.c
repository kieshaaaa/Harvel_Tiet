#include <stdio.h>

int entry_point ( int ( *number )  ,  int ( *limit )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  , 
                int ( *temptemp3 )  )   { 
  int counter = 1 ; 
   ; 
   ; 
  for  ( counter = 1 ;  counter <=  ( *limit )  ;  counter++ )   { 
    int product =  ( *number )  * counter ; 
     { 
       ( *temptemp1 )  =  ( *number )  ; 
       ( *temptemp2 )  = counter ; 
       ( *temptemp3 )  = product ; 
       ; 
     } 
   } 
  return 0 ; 
 } 
