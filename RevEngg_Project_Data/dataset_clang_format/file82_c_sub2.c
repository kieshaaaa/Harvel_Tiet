#include <stdio.h>

int entry_point ( int ( *temptemp1 )  ,  int ( *temptemp2 )  ,  int ( *temptemp3 )  , 
                int ( *temptemp4 )  )   { 
  int value = 789 ; 
  int decValue = value ; 
  int octValue = value ; 
  int hexValue = value ; 
   { 
     ( *temptemp1 )  = decValue ; 
     ; 
   } 
   { 
     ( *temptemp2 )  = octValue ; 
     ; 
   } 
   { 
     ( *temptemp3 )  = hexValue ; 
     ; 
   } 
   { 
     ( *temptemp4 )  = hexValue ; 
     ; 
   } 
  return 0 ; 
 } 
