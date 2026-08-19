#include <stdio.h>

int entry_point ( int ( *limit )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  ,  int ( *temptemp3 )  , 
                int ( *temptemp4 )  )   { 
  int total ; 
  int y ; 
  int x ; 
  int perfectCount = 0 ; 
   ; 
   { 
     ( *temptemp1 )  =  ( *limit )  ; 
     ; 
   } 
  x = 1 ; 
  for  (  ;  x <=  ( *limit )  ;  x++ )   { 
    total = 0 ; 
    y = 1 ; 
    for  (  ;  y <= x / 2 ;  y++ )   { 
      if  ( x % y == 0 )   { 
        total += y ; 
       } 
     } 
    if  ( total == x )   { 
       { 
         ( *temptemp2 )  = x ; 
         ; 
       } 
      perfectCount++ ; 
     } 
   } 
   { 
     ( *temptemp3 )  =  ( *limit )  ; 
     ( *temptemp4 )  = perfectCount ; 
     ; 
   } 
  return 0 ; 
 } 
