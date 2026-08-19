#include <stdio.h>

int entry_point ( int ( *temptemp1 )  ,  int ( *temptemp2 )  ,  int ( *temptemp3 )  , 
                int ( *temptemp4 )  ,  int ( *temptemp5 )  ,  int ( *temptemp6 )  )   { 
  int x = 100 ; 
   { 
     ( *temptemp1 )  = x ; 
     ; 
   } 
  x = 200 ; 
   { 
     ( *temptemp2 )  = x ; 
     ; 
   } 
  x = 300 ; 
   { 
     ( *temptemp3 )  = x ; 
     ; 
   } 
  x = 100 + 10 ; 
   ; 
   { 
     ( *temptemp4 )  = x ; 
     ; 
   } 
  x = 200 + 10 ; 
   { 
     ( *temptemp5 )  = x ; 
     ; 
   } 
  x = 300 + 10 ; 
   { 
     ( *temptemp6 )  = x ; 
     ; 
   } 
  return 0 ; 
 } 
