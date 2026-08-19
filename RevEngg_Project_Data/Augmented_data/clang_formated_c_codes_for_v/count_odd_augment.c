#include <stdio.h>
#include <stdlib.h>

int entry_point ( int ( *start )  ,  int ( *end )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  , 
                int ( *temptemp3 )  )   { 
  int count ; 
   ; 
   ; 
   { 
     ( *temptemp1 )  =  ( *start )  ; 
     ( *temptemp2 )  =  ( *end )  ; 
     ; 
   } 
  count =  ( *start )  ; 
  while  ( count <=  ( *end )  )   { 
    if  ( count % 2 == 1 )   { 
       { 
         ( *temptemp3 )  = count ; 
         ; 
       } 
     } 
    count++ ; 
   } 
  return 0 ; 
 } 
