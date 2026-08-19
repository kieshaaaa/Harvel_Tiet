#include <stdio.h>

int entry_point ( int ( *num )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  )   { 
  int temp ; 
  int remainder = 0 ; 
  int reversedNum = 0 ; 
   ; 
  temp =  ( *num )  ; 
  for  (  ;  temp != 0 ;  temp /= 10 )   { 
    remainder = temp % 10 ; 
    reversedNum = reversedNum * 10 + remainder ; 
   } 
  if  ( reversedNum ==  ( *num )  )   { 
     ( *temptemp1 )  =  ( *num )  ; 
     ; 
   }  else  { 
     ( *temptemp2 )  =  ( *num )  ; 
     ; 
   } 
  return 0 ; 
 } 
