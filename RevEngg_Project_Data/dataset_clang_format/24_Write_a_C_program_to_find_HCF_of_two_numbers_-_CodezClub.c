#include <stdio.h>

int findHcf ( int a ,  int b )   { 
  int temp ; 
  if  ( a == 0 || b == 0 )  return 0 ; 
  while  ( b != 0 )   { 
    temp = a % b ; 
    a = b ; 
    b = temp ; 
   } 
  return a ; 
 } 
int entry_point ( int ( *a )  ,  int ( *b )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  , 
                int ( *temptemp3 )  )   { 
  int hcf ; 
   ; 
   ; 
  hcf = findHcf (  ( *a )  ,   ( *b )  )  ; 
   { 
     ( *temptemp1 )  =  ( *a )  ; 
     ( *temptemp2 )  =  ( *b )  ; 
     ( *temptemp3 )  = hcf ; 
     ; 
   } 
  return 0 ; 
 } 
