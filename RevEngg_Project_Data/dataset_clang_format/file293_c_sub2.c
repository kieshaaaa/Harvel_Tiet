#include <stdio.h>

int entry_point ( char ( *confirm )  ,  float ( *inches )  ,  float ( *temptemp1 )  )   { 
  float feet ; 
   ; 
  if  (  ( *confirm )  == 'y' ||  ( *confirm )  == 'Y' )   { 
     ; 
    feet =  ( *inches )  / 12.0 ; 
     ; 
     { 
       ( *temptemp1 )  = feet ; 
       ; 
     } 
   }  else  { 
     ; 
   } 
  return 0 ; 
 } 
