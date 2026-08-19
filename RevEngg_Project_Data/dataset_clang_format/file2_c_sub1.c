#include <stdio.h>

int entry_point ( float ( *bs )  ,  float ( *temptemp1 )  ,  float ( *temptemp2 )  , 
                float ( *temptemp3 )  ,  float ( *temptemp4 )  ,  float ( *temptemp5 )  )   { 
  float gs ; 
  float cv ; 
  float da ; 
  float hra ; 
  int category ; 
   ; 
  if  (  ( *bs )  < 3000 ) 
    category = 1 ; 
  else if  (  ( *bs )  >= 3000 &&  ( *bs )  < 5000 ) 
    category = 2 ; 
  else
    category = 3 ; 
  switch  ( category )   { 
    case 1:
      da = 0.9 *  ( *bs )  ; 
      hra = 0.1 *  ( *bs )  ; 
      cv = 300 ; 
      break ; 
    case 2:
      da =  ( *bs )  ; 
      hra = 0.15 *  ( *bs )  ; 
      cv = 400 ; 
      break ; 
    case 3:
      da = 1.1 *  ( *bs )  ; 
      hra = 0.2 *  ( *bs )  ; 
      cv = 500 ; 
      break ; 
   } 
  gs =  ( *bs )  + da + hra + cv ; 
   { 
     ( *temptemp1 )  =  ( *bs )  ; 
     ; 
   } 
   { 
     ( *temptemp2 )  = da ; 
     ; 
   } 
   { 
     ( *temptemp3 )  = hra ; 
     ; 
   } 
   { 
     ( *temptemp4 )  = cv ; 
     ; 
   } 
   { 
     ( *temptemp5 )  = gs ; 
     ; 
   } 
  return 0 ; 
 } 
