#include <stdio.h>

int entry_point ( char ( *name )  ,  float ( *basic )  ,  float ( *hra )  ,  float ( *da )  , 
                char ( *temptemp1 )  ,  float ( *temptemp2 )  ,  float ( *temptemp3 )  , 
                float ( *temptemp4 )  ,  float ( *temptemp5 )  ,  float ( *temptemp6 )  )   { 
  float gross ; 
  float pf ; 
   ; 
   ; 
   ; 
   ; 
  pf =  (  ( *basic )  * 12 )  / 100 ; 
  gross =  ( *basic )  +  ( *da )  +  ( *hra )  + pf ; 
   { 
     ( *temptemp1 )  =  ( *name )  ; 
     ( *temptemp2 )  =  ( *basic )  ; 
     ( *temptemp3 )  =  ( *hra )  ; 
     ( *temptemp4 )  =  ( *da )  ; 
     ( *temptemp5 )  = pf ; 
     ( *temptemp6 )  = gross ; 
     ; 
   } 
  return 0 ; 
 } 
