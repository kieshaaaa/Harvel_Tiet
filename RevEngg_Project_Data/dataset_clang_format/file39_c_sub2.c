#include <stdio.h>

int entry_point ( int ( *temptemp1 )  ,  int ( *temptemp2 )  ,  float ( *temptemp3 )  , 
                float ( *temptemp4 )  )   { 
  int x = 30 ; 
  float y = 40.5 ; 
  int x_increment = 10 ; 
  float y_decrement = 5.5 ; 
  int new_x = x + x_increment ; 
  float new_y = y - y_decrement ; 
   { 
     ( *temptemp1 )  = x ; 
     ; 
   } 
   { 
     ( *temptemp2 )  = new_x ; 
     ; 
   } 
   { 
     ( *temptemp3 )  = y ; 
     ; 
   } 
   { 
     ( *temptemp4 )  = new_y ; 
     ; 
   } 
  return 0 ; 
 } 
