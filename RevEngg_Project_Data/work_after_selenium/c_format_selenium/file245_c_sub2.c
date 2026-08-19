#include <stdio.h>

int entry_point ( float ( *principal )  ,  float ( *rate )  ,  float ( *year )  , 
                float ( *temptemp1 )  )   { 
  float ci ; 
  int i ; 
   ; 
   ; 
   ; 
  ci =  ( *principal )  ; 
  for  ( i = 0 ;  i <  ( *year )  ;  i++ )   { 
    ci = ci +  ( ci *  ( *rate )  / 100 )  ; 
   } 
  ci -=  ( *principal )  ; 
   { 
     ( *temptemp1 )  = ci ; 
     ; 
   } 
  return 0 ; 
 } 
