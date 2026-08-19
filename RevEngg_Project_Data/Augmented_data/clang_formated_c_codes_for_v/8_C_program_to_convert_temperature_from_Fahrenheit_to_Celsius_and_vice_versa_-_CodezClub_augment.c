#include <stdio.h>

int entry_point ( int ( *option )  ,  float ( *fahrenheit )  ,  float ( *celsius )  , 
                float ( *temptemp1 )  ,  float ( *temptemp2 )  )   { 
   ; 
   ; 
   ; 
  if  (  ( *option )  == 1 )   { 
     ; 
     ( *celsius )  =  (  ( *fahrenheit )  - 32 )  / 1.8 ; 
     { 
       ( *temptemp1 )  =  ( *celsius )  ; 
       ; 
     } 
   }  else if  (  ( *option )  == 2 )   { 
     ; 
     ( *fahrenheit )  =  (  ( *celsius )  * 1.8 )  + 32 ; 
     { 
       ( *temptemp2 )  =  ( *fahrenheit )  ; 
       ; 
     } 
   }  else  { 
     ; 
   } 
  return 0 ; 
 } 
