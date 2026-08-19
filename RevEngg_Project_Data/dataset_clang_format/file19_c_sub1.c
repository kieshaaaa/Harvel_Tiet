#include <stdio.h>

int entry_point ( int ( *temptemp1 )  ,  int ( *temptemp2 )  )   { 
  int originalArray [ 10 ]  =  { 1 ,  2 ,  3 ,  4 ,  5 ,  6 ,  7 ,  8 ,  9 ,  10 }  ; 
  int copyArray [ 10 ]  ; 
  int i ; 
   ; 
  for  ( i = 0 ;  i < 10 ;  i++ )   { 
    copyArray [ i ]  = originalArray [ i ]  ; 
     { 
       ( *temptemp1 )  = originalArray [ i ]  ; 
       ( *temptemp2 )  = copyArray [ i ]  ; 
       ; 
     } 
   } 
  return 0 ; 
 } 
