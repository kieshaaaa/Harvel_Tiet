#include <stdio.h>

void readArray ( int arr [  ]  ,  int size )   { 
  int i = 0 ; 
   ; 
  for  ( i = 0 ;  i < size ;  i++ )   { 
     ; 
   } 
 } 
int getLargest ( int arr [  ]  ,  int size )   { 
  int i = 0 ,  largest = 0 ; 
  largest = arr [ 0 ]  ; 
  for  ( i = 1 ;  i < size ;  i++ )   { 
    if  ( arr [ i ]  > largest )  largest = arr [ i ]  ; 
   } 
  return largest ; 
 } 
int getSmallest ( int arr [  ]  ,  int size )   { 
  int i = 0 ,  smallest = 0 ; 
  smallest = arr [ 0 ]  ; 
  for  ( i = 1 ;  i < size ;  i++ )   { 
    if  ( arr [ i ]  < smallest )  smallest = arr [ i ]  ; 
   } 
  return smallest ; 
 } 
int entry_point ( int ( *temptemp1 )  ,  int ( *temptemp2 )  )   { 
  int arr [ 10 ]  ; 
  readArray ( arr ,  10 )  ; 
   { 
     ( *temptemp1 )  = getLargest ( arr ,  10 )  ; 
     ; 
   } 
   { 
     ( *temptemp2 )  = getSmallest ( arr ,  10 )  ; 
     ; 
   } 
  return 0 ; 
 } 
