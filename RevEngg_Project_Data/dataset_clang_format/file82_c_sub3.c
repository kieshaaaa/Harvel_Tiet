#include <stdio.h>

int entry_point ( int ( *temptemp1 )  ,  int ( *temptemp2 )  ,  int ( *temptemp3 )  , 
                int ( *temptemp4 )  )   { 
  int decValue = 1024 ; 
  int octValue = 1024 ; 
  int hexValueSmall = 1024 ; 
  int hexValueCapital = 1024 ; 
   { 
     ( *temptemp1 )  = decValue ; 
     ; 
   } 
   { 
     ( *temptemp2 )  = octValue ; 
     ; 
   } 
   { 
     ( *temptemp3 )  = hexValueSmall ; 
     ; 
   } 
   { 
     ( *temptemp4 )  = hexValueCapital ; 
     ; 
   } 
  return 0 ; 
 } 
