#include <stdio.h>

int entry_point ( int ( *height )  ,  int ( *weight )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  , 
                int ( *temptemp3 )  ,  int ( *temptemp4 )  ,  int ( *temptemp5 )  , 
                int ( *temptemp6 )  ,  int ( *temptemp7 )  )   { 
  int h ; 
  int BMI ; 
  int result ; 
   ; 
   ; 
  h =  ( *height )  / 100 ; 
  BMI =  ( *weight )  /  ( h * h )  ; 
  if  ( BMI < 15 )   { 
    result = BMI + 1 ; 
     { 
       ( *temptemp1 )  = result ; 
       ; 
     } 
   }  else if  ( BMI >= 15.1 && BMI <= 17.5 )   { 
    result = BMI + 2 ; 
     { 
       ( *temptemp2 )  = result ; 
       ; 
     }  ; 
   }  else if  ( BMI >= 17.6 && BMI <= 18.5 )   { 
    result = BMI + 3 ; 
     { 
       ( *temptemp3 )  = result ; 
       ; 
     }  ; 
   }  else if  ( BMI >= 18.6 && BMI <= 24.9 )   { 
    result = BMI + 4 ; 
     { 
       ( *temptemp4 )  = result ; 
       ; 
     }  ; 
   }  else if  ( BMI >= 25 && BMI <= 29.9 )   { 
    result = BMI + 5 ; 
     { 
       ( *temptemp5 )  = result ; 
       ; 
     }  ; 
   }  else if  ( BMI >= 30 && BMI <= 39.9 )   { 
    result = BMI + 6 ; 
     { 
       ( *temptemp6 )  = result ; 
       ; 
     }  ; 
   }  else  { 
    result = BMI + 7 ; 
     { 
       ( *temptemp7 )  = result ; 
       ; 
     } 
   } 
  return 0 ; 
 } 
