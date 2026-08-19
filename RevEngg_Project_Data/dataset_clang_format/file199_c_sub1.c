#include <stdio.h>

int entry_point ( float ( *heightInMeters )  ,  float ( *weight )  ,  float ( *temptemp1 )  )   { 
  float bmi ; 
   ; 
   ; 
   ( *heightInMeters )  =  ( *heightInMeters )  / 100 ; 
  bmi =  ( *weight )  /  (  ( *heightInMeters )  *  ( *heightInMeters )  )  ; 
   { 
     ( *temptemp1 )  = bmi ; 
     ; 
   } 
  if  ( bmi < 18.5 )   { 
     ; 
   }  else if  ( bmi < 25 )   { 
     ; 
   }  else if  ( bmi < 30 )   { 
     ; 
   }  else  { 
     ; 
   } 
  return 0 ; 
 } 
