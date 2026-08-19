#include <stdio.h>

int entry_point ( int ( *size )  ,  int ( *arr )  ,  int ( *searchNum )  ,  int ( *temptemp1 )  )   { 
  int found = 0 ; 
  int index ; 
   ; 
   ; 
  index = 0 ; 
  while  ( index <=  ( *size )  - 1 )   { 
     { 
       ( *temptemp1 )  = index + 1 ; 
       ; 
     } 
    index++ ; 
   }  ; 
  index = 0 ; 
  while  ( index <=  ( *size )  - 1 )   { 
    if  ( arr [ index ]  ==  ( *searchNum )  )   { 
      found = 1 ; 
      break ; 
     } 
    index++ ; 
   } 
  if  ( found == 0 ) 
     ; 
  else
     ; 
  return 0 ; 
 } 
