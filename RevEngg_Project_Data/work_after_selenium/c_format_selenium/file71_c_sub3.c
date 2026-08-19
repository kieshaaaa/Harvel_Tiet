#include <stdio.h>
#include <stdlib.h>

int entry_point ( int ( *start )  ,  int ( *end )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  , 
                int ( *temptemp3 )  )   { 
   ; 
   ; 
   { 
     ( *temptemp1 )  =  ( *start )  ; 
     ( *temptemp2 )  =  ( *end )  ; 
     ; 
   } 
  int counter =  ( *start )  ; 
  do  { 
    if  ( counter % 2 == 0 )   { 
       { 
         ( *temptemp3 )  = counter ; 
         ; 
       } 
     } 
    counter++ ; 
   }  while  ( counter <=  ( *end )  )  ; 
  return 0 ; 
 } 
