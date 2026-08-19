#include <stdio.h>

int entry_point ( float ( *num )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  , 
                float ( *temptemp3 )  ,  float ( *temptemp4 )  )   { 
  float result = 1.0 ; 
  int i ; 
  for  ( i = 1 ;  i <= 4 ;  i++ )   { 
     { 
       ( *temptemp1 )  = i ; 
       ; 
     } 
    result *=  ( *num )  ; 
     { 
       ( *temptemp2 )  = i ; 
       ( *temptemp3 )  = result ; 
       ; 
     } 
   } 
   { 
     ( *temptemp4 )  = result ; 
     ; 
   } 
  return 0 ; 
 } 
