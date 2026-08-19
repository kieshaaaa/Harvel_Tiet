#include <stdio.h>

int entry_point ( int ( *min )  ,  int ( *max )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  )   { 
  int j ; 
  int i ; 
  int factorial ; 
   ; 
   ; 
  i =  ( *min )  ; 
  while  ( i <=  ( *max )  )   { 
    factorial = 1 ; 
    j = 2 ; 
    while  ( j <= i )   { 
      factorial = factorial * j ; 
      if  ( factorial < 0 )   { 
        factorial = -1 ; 
        break ; 
       } 
      j++ ; 
     } 
    if  ( factorial > 0 && factorial <=  ( *max )  )   { 
       { 
         ( *temptemp1 )  = i ; 
         ( *temptemp2 )  = factorial ; 
         ; 
       } 
     }  else  { 
      break ; 
     } 
    i++ ; 
   } 
  return 0 ; 
 } 
