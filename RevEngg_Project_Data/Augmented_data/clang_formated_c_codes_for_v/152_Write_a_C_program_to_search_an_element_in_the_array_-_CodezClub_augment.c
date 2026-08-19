#include <stdio.h>

int entry_point ( int ( *arraySize )  ,  int ( *data )  ,  int ( *searchValue )  ,  int ( *temptemp1 )  , 
                int ( *temptemp2 )  ,  int ( *temptemp3 )  ,  int ( *temptemp4 )  )   { 
  int found ; 
  int index ; 
   ; 
   ; 
  index = 0 ; 
  while  ( index <  ( *arraySize )  )   { 
     { 
       ( *temptemp1 )  = index + 1 ; 
       ; 
     } 
    index++ ; 
   }  ; 
  found = 0 ; 
  index = 0 ; 
  while  ( index <  ( *arraySize )  )   { 
    if  ( data [ index ]  ==  ( *searchValue )  )   { 
      found = 1 ; 
       { 
         ( *temptemp2 )  =  ( *searchValue )  ; 
         ( *temptemp3 )  = index + 1 ; 
         ; 
       } 
      break ; 
     } 
    index++ ; 
   } 
  if  ( found == 0 )   { 
     { 
       ( *temptemp4 )  =  ( *searchValue )  ; 
       ; 
     } 
   } 
  return 0 ; 
 } 
