#include <stdio.h>

int entry_point ( int ( *number )  ,  int ( *searchDigit )  ,  int ( *temptemp1 )  , 
                int ( *temptemp2 )  ,  int ( *temptemp3 )  )   { 
  int count = 0 ; 
   ; 
   ; 
  int temp =  ( *number )  ; 
  do  { 
    if  ( temp % 10 ==  ( *searchDigit )  )   { 
      count++ ; 
     } 
    temp /= 10 ; 
   }  while  ( temp > 0 )  ; 
   { 
     ( *temptemp1 )  =  ( *searchDigit )  ; 
     ( *temptemp2 )  =  ( *number )  ; 
     ( *temptemp3 )  = count ; 
     ; 
   } 
  return 0 ; 
 } 
