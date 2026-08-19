#include <stdio.h>

int findHcf ( int num1 ,  int num2 )   { 
  int temp ; 
  if  ( num1 == 0 || num2 == 0 )  return 0 ; 
  int i = num2 ; 
  while  ( i != 0 )   { 
    temp = num1 % i ; 
    num1 = i ; 
    i = temp ; 
   } 
  return num1 ; 
 } 
int entry_point ( int ( *num1 )  ,  int ( *num2 )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  , 
                int ( *temptemp3 )  )   { 
  int hcf ; 
   ; 
   ; 
  hcf = findHcf (  ( *num1 )  ,   ( *num2 )  )  ; 
   { 
     ( *temptemp1 )  =  ( *num1 )  ; 
     ( *temptemp2 )  =  ( *num2 )  ; 
     ( *temptemp3 )  = hcf ; 
     ; 
   } 
  return 0 ; 
 } 
