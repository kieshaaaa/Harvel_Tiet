#include <stdio.h>

int entry_point ( int ( *num )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  )   { 
  int count = 0 ; 
  int i = 0 ; 
  int arr [ 100 ]  ; 
  while  (  ( *num )  != -1 )   { 
     ; 
    count++ ; 
    arr [ i++ ]  =  ( *num )  ; 
   } 
   { 
     ( *temptemp1 )  = count ; 
     ; 
   }  ; 
  for  ( i = 0 ;  i < count ;  i++ )   { 
     { 
       ( *temptemp2 )  = arr [ i ]  ; 
       ; 
     } 
   }  ; 
  return 0 ; 
 } 
