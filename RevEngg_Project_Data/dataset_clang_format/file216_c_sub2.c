#include <stdio.h>

int entry_point ( int ( *regno )  ,  int ( *name )  ,  int ( *age )  ,  char ( *temptemp1 )  , 
                char ( *temptemp2 )  ,  int ( *temptemp3 )  ,  int ( *temptemp4 )  , 
                int ( *temptemp5 )  ,  float ( *temptemp6 )  )   { 
  char regno [ 15 ]  ; 
  char name [ 20 ]  ; 
  int dobMonth ; 
  int dobYear ; 
  float result ; 
   ; 
   ; 
   ; 
   ; 
   ; 
  )  ; 
  )  ; 
 result =  ( *age )  + dobYear +  ( float ) dobMonth / 100 ; 
  ; 
  { 
    ( *temptemp1 )  =  ( *name )  ; 
    ( *temptemp2 )  =  ( *regno )  ; 
    ( *temptemp3 )  =  ( *age )  ; 
    ( *temptemp4 )  = dobYear ; 
    ( *temptemp5 )  = dobMonth ; 
    ( *temptemp6 )  = result ; 
    ; 
  } 
 return 0 ; 
 } 
