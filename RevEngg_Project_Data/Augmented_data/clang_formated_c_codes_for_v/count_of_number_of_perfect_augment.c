#include <stdio.h>

int entry_point ( int ( *limit )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  ,  int ( *temptemp3 )  , 
                int ( *temptemp4 )  )   { 
  int total ; 
  int b ; 
  int a ; 
  int perfect_count = 0 ; 
   ; 
   { 
     ( *temptemp1 )  =  ( *limit )  ; 
     ; 
   } 
  a = 1 ; 
  while  ( a <=  ( *limit )  )   { 
    total = 0 ; 
    b = 1 ; 
    while  ( b <= a / 2 )   { 
      if  ( a % b == 0 )   { 
        total += b ; 
       } 
      b++ ; 
     } 
    if  ( total == a )   { 
       { 
         ( *temptemp2 )  = a ; 
         ; 
       } 
      perfect_count++ ; 
     } 
    a++ ; 
   } 
   { 
     ( *temptemp3 )  =  ( *limit )  ; 
     ( *temptemp4 )  = perfect_count ; 
     ; 
   } 
  return 0 ; 
 } 
