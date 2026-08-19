#include <stdio.h>

int entry_point ( int ( *num )  ,  int ( *digitToFind )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  , 
                int ( *temptemp3 )  )   { 
  int occurrences = 0 ; 
   ; 
   ; 
  int temp =  ( *num )  ; 
  while  ( temp > 0 )   { 
    if  ( temp % 10 ==  ( *digitToFind )  )   { 
      occurrences++ ; 
     } 
    temp /= 10 ; 
   } 
   { 
     ( *temptemp1 )  =  ( *digitToFind )  ; 
     ( *temptemp2 )  =  ( *num )  ; 
     ( *temptemp3 )  = occurrences ; 
     ; 
   } 
  return 0 ; 
 } 
