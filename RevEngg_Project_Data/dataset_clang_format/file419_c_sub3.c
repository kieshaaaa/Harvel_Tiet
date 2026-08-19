#include <stdio.h>

int entry_point ( float ( *cm_input )  ,  float ( *temptemp1 )  ,  float ( *temptemp2 )  )   { 
  float inch_output ; 
   ; 
  inch_output =  ( *cm_input )  / 2.54 ; 
   ; 
   { 
     ( *temptemp1 )  =  ( *cm_input )  ; 
     ; 
   } 
   { 
     ( *temptemp2 )  = inch_output ; 
     ; 
   } 
  return 0 ; 
 } 
