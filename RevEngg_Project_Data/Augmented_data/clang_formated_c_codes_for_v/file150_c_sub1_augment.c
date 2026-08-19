#include <stdio.h>

int entry_point ( int ( *num )  ,  int ( *temptemp1 )  )   { 
  int i ; 
  int binary [ 32 ]  =  { 0 }  ; 
   ; 
  i = 0 ; 
  while  ( i < 32 )   { 
    binary [ i ]  =  (  ( *num )  >> i )  & 1 ; 
    i++ ; 
   }  ; 
  int startPrint = 0 ; 
  i = 31 ; 
  while  ( i >= 0 )   { 
    if  ( binary [ i ]  == 1 )  startPrint = 1 ; 
    if  ( startPrint )   { 
       ( *temptemp1 )  = binary [ i ]  ; 
       ; 
     } 
    i-- ; 
   }  ; 
   ; 
  return 0 ; 
 } 
