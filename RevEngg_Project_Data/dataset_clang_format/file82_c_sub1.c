#include <stdio.h>

int entry_point ( int ( *temptemp1 )  ,  int ( *temptemp2 )  ,  int ( *temptemp3 )  , 
                int ( *temptemp4 )  )   { 
  float value = 255 ; 
  int intValue =  ( int ) value ; 
   { 
     ( *temptemp1 )  = intValue ; 
     ; 
   } 
   { 
     ( *temptemp2 )  = intValue ; 
     ; 
   } 
   { 
     ( *temptemp3 )  = intValue ; 
     ; 
   } 
   { 
     ( *temptemp4 )  = intValue ; 
     ; 
   } 
  return 0 ; 
 } 
