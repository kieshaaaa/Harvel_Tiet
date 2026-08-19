#include <stdio.h>

int entry_point ( int ( *lower )  ,  int ( *upper )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  , 
                int ( *temptemp3 )  )   { 
  int sum ; 
  int j ; 
  int i ; 
   ; 
   ; 
   { 
     ( *temptemp1 )  =  ( *lower )  ; 
     ( *temptemp2 )  =  ( *upper )  ; 
     ; 
   } 
  for  ( i =  ( *lower )  ;  i <=  ( *upper )  ;  i++ )   { 
    sum = 0 ; 
    for  ( j = 1 ;  j <= i / 2 ;  j++ )   { 
      if  ( i % j == 0 )   { 
        sum += j ; 
       } 
     } 
    if  ( sum == i && i != 0 )   { 
       { 
         ( *temptemp3 )  = i ; 
         ; 
       } 
     } 
   } 
  return 0 ; 
 } 
