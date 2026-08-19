#include <stdio.h>

int entry_point ( int ( *size )  ,  int ( *data )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  , 
                int ( *temptemp3 )  )   { 
  int j ; 
   ; 
   { 
     ( *temptemp1 )  =  ( *size )  ; 
     ; 
   } 
  j = 0 ; 
  while  ( j <  ( *size )  )   { 
     { 
       ( *temptemp2 )  = j + 1 ; 
       ; 
     } 
    j++ ; 
   }  ; 
  j = 0 ; 
  while  ( j <  ( *size )  )   { 
    if  ( data [ j ]  < 0 )   { 
       { 
         ( *temptemp3 )  = data [ j ]  ; 
         ; 
       } 
     } 
    j++ ; 
   } 
  return 0 ; 
 } 
