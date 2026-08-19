#include <stdio.h>

int entry_point ( int ( *yr )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  ,  int ( *temptemp3 )  , 
                int ( *temptemp4 )  )   { 
  int leap_check ; 
   ; 
  if  (  ( *yr )  % 400 == 0 )   { 
    leap_check = 1 ; 
     { 
       ( *temptemp1 )  =  ( *yr )  ; 
       ; 
     } 
   }  else if  (  ( *yr )  % 100 == 0 )   { 
    leap_check = 2 ; 
     { 
       ( *temptemp2 )  =  ( *yr )  ; 
       ; 
     } 
   }  else if  (  ( *yr )  % 4 == 0 )   { 
    leap_check = 3 ; 
     { 
       ( *temptemp3 )  =  ( *yr )  ; 
       ; 
     } 
   }  else  { 
    leap_check = 4 ; 
     { 
       ( *temptemp4 )  =  ( *yr )  ; 
       ; 
     } 
   } 
  return 0 ; 
 } 
