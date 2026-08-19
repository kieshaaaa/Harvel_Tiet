#include <stdio.h>

int entry_point ( int ( *limit )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  ,  int ( *temptemp3 )  , 
                int ( *temptemp4 )  )   { 
  int total ; 
  int j ; 
  int i ; 
  int perfectCount = 0 ; 
   ; 
   { 
     ( *temptemp1 )  =  ( *limit )  ; 
     ; 
   } 
  i = 2 ; 
  while  ( i <=  ( *limit )  )   { 
    total = 1 ; 
    j = 2 ; 
    while  ( j <= i / 2 )   { 
      if  ( i % j == 0 )   { 
        total += j ; 
       } 
      j++ ; 
     } 
    if  ( total == i )   { 
       { 
         ( *temptemp2 )  = i ; 
         ; 
       } 
      perfectCount++ ; 
     } 
    i += 2 ; 
   } 
   { 
     ( *temptemp3 )  =  ( *limit )  ; 
     ( *temptemp4 )  = perfectCount ; 
     ; 
   } 
  return 0 ; 
 } 
