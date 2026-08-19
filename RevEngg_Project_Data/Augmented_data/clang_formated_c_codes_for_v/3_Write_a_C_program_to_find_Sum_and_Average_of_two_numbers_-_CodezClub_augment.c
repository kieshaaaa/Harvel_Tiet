#include <stdio.h>

int entry_point ( int ( *num1 )  ,  int ( *num2 )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  , 
                int ( *temptemp3 )  ,  int ( *temptemp4 )  ,  int ( *temptemp5 )  , 
                float ( *temptemp6 )  )   { 
  int sum ; 
  float average ; 
   ; 
   ; 
  sum =  ( *num1 )  +  ( *num2 )  ; 
  average =  ( float )  (  ( *num1 )  +  ( *num2 )  )  / 2 ; 
   { 
     ( *temptemp1 )  =  ( *num1 )  ; 
     ( *temptemp2 )  =  ( *num2 )  ; 
     ( *temptemp3 )  = sum ; 
     ; 
   } 
   { 
     ( *temptemp4 )  =  ( *num1 )  ; 
     ( *temptemp5 )  =  ( *num2 )  ; 
     ( *temptemp6 )  = average ; 
     ; 
   } 
  return 0 ; 
 } 
