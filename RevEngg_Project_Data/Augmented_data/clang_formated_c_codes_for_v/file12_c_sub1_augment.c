#include <stdio.h>

int entry_point ( int ( *number )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  )   { 
  int total = 0 ; 
  int counter = 1 ; 
   ; 
  for  (  ;  counter <  ( *number )  ;  counter++ )   { 
    if  (  ( *number )  % counter == 0 )   { 
      total += counter ; 
     } 
   } 
  if  ( total ==  ( *number )  )   { 
     { 
       ( *temptemp1 )  =  ( *number )  ; 
       ; 
     } 
   }  else  { 
     { 
       ( *temptemp2 )  =  ( *number )  ; 
       ; 
     } 
   } 
  return 0 ; 
 } 
