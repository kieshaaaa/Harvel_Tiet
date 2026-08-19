#include <stdio.h>

int entry_point ( int ( *x )  ,  int ( *y )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  , 
                int ( *temptemp3 )  ,  int ( *temptemp4 )  )   { 
  int temp ; 
   ; 
   ; 
   ; 
   { 
     ( *temptemp1 )  =  ( *x )  ; 
     ( *temptemp2 )  =  ( *y )  ; 
     ; 
   } 
  temp =  ( *x )  ; 
   ( *x )  =  ( *y )  ; 
   ( *y )  = temp ; 
   ; 
   { 
     ( *temptemp3 )  =  ( *x )  ; 
     ( *temptemp4 )  =  ( *y )  ; 
     ; 
   } 
  return 0 ; 
 } 
