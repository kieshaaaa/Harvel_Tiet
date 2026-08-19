#include <stdio.h>

int entry_point ( int ( *yr )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  )   { 
   ; 
  int isLeap =  (  ( *yr )  % 400 == 0 )  ||  (  ( *yr )  % 100 &&  ( *yr )  % 4 == 0 )  ; 
  switch  ( isLeap )   { 
    case 0:  { 
       ( *temptemp1 )  =  ( *yr )  ; 
       ; 
     }  break ; 
    case 1:  { 
       ( *temptemp2 )  =  ( *yr )  ; 
       ; 
     }  break ; 
   }  ; 
  return 0 ; 
 } 
