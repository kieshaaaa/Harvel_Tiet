#include <stdio.h>

int entry_point ( int ( *lower )  ,  int ( *upper )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  )   { 
   ; 
   ; 
  int i =  ( *lower )  ; 
  while  ( i <=  ( *upper )  )   { 
    int fact = 1 ; 
    int j = 2 ; 
    while  ( j <= i )   { 
      fact *= j ; 
      if  ( fact < 0 )   { 
        fact = -1 ; 
        break ; 
       } 
      j++ ; 
     } 
    if  ( fact > 0 && fact <=  ( *upper )  )   { 
       { 
         ( *temptemp1 )  = i ; 
         ( *temptemp2 )  = fact ; 
         ; 
       } 
     }  else  { 
      break ; 
     } 
    i++ ; 
   } 
  return 0 ; 
 } 
