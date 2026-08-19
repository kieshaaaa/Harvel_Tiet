#include <stdio.h>

int entry_point ( float ( *rectLength )  ,  float ( *rectBreadth )  ,  float ( *temptemp1 )  , 
                float ( *temptemp2 )  )   { 
  float rectArea ; 
  float rectPerimeter ; 
   ; 
   ; 
  rectArea =  ( *rectLength )  *  ( *rectBreadth )  ; 
  rectPerimeter =  ( 2 *  ( *rectLength )  )  +  ( 2 *  ( *rectBreadth )  )  ; 
   { 
     ( *temptemp1 )  = rectArea ; 
     ; 
   } 
   { 
     ( *temptemp2 )  = rectPerimeter ; 
     ; 
   } 
  return 0 ; 
 } 
