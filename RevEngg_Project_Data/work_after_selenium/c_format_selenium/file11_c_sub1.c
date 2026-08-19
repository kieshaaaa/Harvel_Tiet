#include <stdio.h>

int entry_point ( int ( *number1 )  ,  int ( *number2 )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  , 
                int ( *temptemp3 )  ,  int ( *temptemp4 )  )   { 
  int count = 0 ; 
  int j ; 
  int i ; 
   ; 
  for  ( i =  ( *number1 )  ;  i <=  ( *number2 )  ;  i++ )   { 
    if  ( i < 2 )  continue ; 
    int isPrime = 1 ; 
    for  ( j = 2 ;  j * j <= i ;  j++ )   { 
      if  ( i % j == 0 )   { 
        isPrime = 0 ; 
        break ; 
       } 
     } 
    if  ( isPrime )   { 
       { 
         ( *temptemp1 )  = i ; 
         ; 
       } 
      count++ ; 
     } 
   } 
   { 
     ( *temptemp2 )  =  ( *number1 )  ; 
     ( *temptemp3 )  =  ( *number2 )  ; 
     ( *temptemp4 )  = count ; 
     ; 
   } 
  return 0 ; 
 } 
