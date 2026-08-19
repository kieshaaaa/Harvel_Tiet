#include <stdio.h>

int entry_point ( int ( *regno )  ,  float ( *name )  ,  char ( *temptemp1 )  ,  char ( *temptemp2 )  , 
                int ( *temptemp3 )  ,  float ( *temptemp4 )  ,  float ( *temptemp5 )  )   { 
  char regno [ 15 ]  ; 
  char name [ 20 ]  ; 
  int age ; 
  float dob ; 
  float result ; 
   ; 
   ; 
   ; 
   ; 
  result = age + dob ; 
   ; 
   { 
     ( *temptemp1 )  =  ( *name )  ; 
     ( *temptemp2 )  =  ( *regno )  ; 
     ( *temptemp3 )  = age ; 
     ( *temptemp4 )  = dob ; 
     ( *temptemp5 )  = result ; 
     ; 
   } 
  return 0 ; 
 } 
