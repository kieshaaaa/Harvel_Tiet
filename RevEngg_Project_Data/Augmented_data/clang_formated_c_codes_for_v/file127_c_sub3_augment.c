#include <stdio.h>

int entry_point ( float ( *number )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  , 
                float ( *temptemp3 )  ,  float ( *temptemp4 )  )   { 
  float product = 1.0 ; 
  int counter ; 
  counter = 1 ; 
  while  ( counter <= 4 )   { 
     { 
       ( *temptemp1 )  = counter ; 
       ; 
     } 
    product *=  ( *number )  ; 
     { 
       ( *temptemp2 )  = counter ; 
       ( *temptemp3 )  = product ; 
       ; 
     } 
    counter++ ; 
   } 
   { 
     ( *temptemp4 )  = product ; 
     ; 
   } 
  return 0 ; 
 } 
