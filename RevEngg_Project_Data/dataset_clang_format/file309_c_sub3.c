#include <stdio.h>

int entry_point ( float ( *kmph )  ,  char ( *temptemp1 )  ,  char ( *temptemp2 )  , 
                float ( *temptemp3 )  )   { 
  float knots ; 
  char inputMsg [  ]  = "Enter speed in kilometers per hour: " ; 
  char outputMsg [  ]  = "The speed in knots is " ; 
   { 
     ( *temptemp1 )  = inputMsg ; 
     ; 
   } 
  knots =  ( *kmph )  / 1.852 ; 
   { 
     ( *temptemp2 )  = outputMsg ; 
     ; 
   } 
   { 
     ( *temptemp3 )  = knots ; 
     ; 
   } 
  return 0 ; 
 } 
