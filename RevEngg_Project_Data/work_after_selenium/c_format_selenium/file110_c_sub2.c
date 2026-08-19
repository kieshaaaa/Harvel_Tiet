#include <stdio.h>

int entry_point ( float ( *bLength )  ,  float ( *hgt )  ,  float ( *temptemp1 )  )   { 
  float vlm ; 
   ; 
  vlm =  (  ( *bLength )  *  ( *bLength )  *  ( *hgt )  )  / 3.0f ; 
   ; 
   { 
     ( *temptemp1 )  = vlm ; 
     ; 
   } 
  return 0 ; 
 } 
