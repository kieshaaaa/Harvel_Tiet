#include <math.h>
#include <stdio.h>

int entry_point ( int ( *sec )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  ,  int ( *temptemp3 )  , 
                int ( *temptemp4 )  ,  int ( *temptemp5 )  ,  int ( *temptemp6 )  , 
                int ( *temptemp7 )  )   { 
  int hh ,  mm ,  ss ; 
   ; 
  hh =  ( *sec )  / 3600 ; 
  mm =  (  ( *sec )  - hh * 3600 )  / 60 ; 
  ss =  ( *sec )  - hh * 3600 - mm * 60 ; 
   { 
     ( *temptemp1 )  =  ( *sec )  ; 
     ( *temptemp2 )  = hh ; 
     ( *temptemp3 )  = mm ; 
     ( *temptemp4 )  = ss ; 
     ; 
   } 
   { 
     ( *temptemp5 )  = hh ; 
     ( *temptemp6 )  = mm ; 
     ( *temptemp7 )  = ss ; 
     ; 
   } 
  return 0 ; 
 } 
