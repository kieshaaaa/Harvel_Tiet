#include <stdio.h>

int entry_point ( int ( *temptemp1 )  ,  int ( *temptemp2 )  ,  int ( *temptemp3 )  , 
                int ( *temptemp4 )  )   { 
  int value = 3412 ; 
   { 
     ( *temptemp1 )  = value ; 
     ; 
   } 
   { 
     ( *temptemp2 )  = value ; 
     ; 
   } 
   { 
     ( *temptemp3 )  = value ; 
     ; 
   } 
   { 
     ( *temptemp4 )  = value ; 
     ; 
   } 
  return 0 ; 
 } 
