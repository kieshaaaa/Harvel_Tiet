#include <math.h>
#include <stdio.h>

int entry_point ( float ( *length )  ,  float ( *width )  ,  float ( *height )  , 
                float ( *temptemp1 )  )   { 
  float surfaceArea ; 
  float slantHeightW ; 
  float slantHeightL ; 
   ; 
   ; 
   ; 
  slantHeightL =
      sqrt (  (  ( *length )  / 2 )  *  (  ( *length )  / 2 )  +  ( *height )  *  ( *height )  )  ; 
  slantHeightW = sqrt (  (  ( *width )  / 2 )  *  (  ( *width )  / 2 )  +  ( *height )  *  ( *height )  )  ; 
  surfaceArea =
       ( *length )  *  ( *width )  +  ( *length )  * slantHeightL +  ( *width )  * slantHeightW ; 
   { 
     ( *temptemp1 )  = surfaceArea ; 
     ; 
   } 
  return 0 ; 
 } 
