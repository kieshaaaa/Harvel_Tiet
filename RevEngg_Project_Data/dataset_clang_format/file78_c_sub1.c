#include <stdio.h>

int entry_point ( int ( *start )  ,  int ( *end )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  , 
                int ( *temptemp3 )  )   { 
  int isPrime ; 
  int j ; 
  int i ; 
   ; 
   { 
     ( *temptemp1 )  =  ( *start )  ; 
     ( *temptemp2 )  =  ( *end )  ; 
     ; 
   } 
  for  ( i =  ( *start )  ;  i <=  ( *end )  ;  i++ )   { 
    if  ( i == 1 || i == 0 )  continue ; 
    isPrime = 1 ; 
    for  ( j = 2 ;  j * j <= i ;  j++ )   { 
      if  ( i % j == 0 )   { 
        isPrime = 0 ; 
        break ; 
       } 
     } 
    if  ( isPrime == 1 )   { 
       { 
         ( *temptemp3 )  = i ; 
         ; 
       } 
     } 
   }  ; 
  return 0 ; 
 } 
