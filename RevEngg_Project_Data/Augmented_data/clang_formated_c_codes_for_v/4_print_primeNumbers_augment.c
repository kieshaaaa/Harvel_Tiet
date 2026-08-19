#include <stdio.h>
#include <stdlib.h>

void entry_point ( int ( *num1 )  ,  int ( *num2 )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  , 
                 int ( *temptemp3 )  ,  int ( *temptemp4 )  ,  int ( *temptemp5 )  )   { 
  int j ; 
  int i ; 
  int count = 0 ; 
  int temp ; 
  int flag ; 
   ; 
  if  (  ( *num2 )  < 2 )   { 
     { 
       ( *temptemp1 )  =  ( *num2 )  ; 
       ; 
     } 
   }  ; 
  temp =  ( *num1 )  ; 
  if  (  ( *num1 )  % 2 == 0 )   { 
     ( *num1 ) ++ ; 
   } 
  i =  ( *num1 )  ; 
  while  ( i <=  ( *num2 )  )   { 
    flag = 0 ; 
    j = 2 ; 
    while  ( j <= i / 2 )   { 
      if  (  ( i % j )  == 0 )   { 
        flag = 1 ; 
        break ; 
       } 
      j++ ; 
     } 
    if  ( flag == 0 )   { 
       { 
         ( *temptemp2 )  = i ; 
         ; 
       } 
      count++ ; 
     } 
    i = i + 2 ; 
   } 
   { 
     ( *temptemp3 )  = temp ; 
     ( *temptemp4 )  =  ( *num2 )  ; 
     ( *temptemp5 )  = count ; 
     ; 
   } 
 } 
