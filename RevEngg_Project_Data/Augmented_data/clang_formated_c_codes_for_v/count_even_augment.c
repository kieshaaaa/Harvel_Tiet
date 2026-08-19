#include <stdio.h>
#include <stdlib.h>

int entry_point ( int ( *numStart )  ,  int ( *numEnd )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  , 
                int ( *temptemp3 )  )   { 
  int i ; 
   ; 
   ; 
   { 
     ( *temptemp1 )  =  ( *numStart )  ; 
     ( *temptemp2 )  =  ( *numEnd )  ; 
     ; 
   } 
  i =  ( *numStart )  ; 
  while  ( i <=  ( *numEnd )  )   { 
    if  ( i % 2 == 0 )   { 
       { 
         ( *temptemp3 )  = i ; 
         ; 
       } 
     } 
    i++ ; 
   } 
  return 0 ; 
 } 
