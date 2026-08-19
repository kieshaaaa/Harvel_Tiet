#include <stdio.h>

void readElements ( int data [  ]  ,  int size )   { 
  int i = 0 ; 
   ; 
  while  ( i < size )   { 
     ; 
    i++ ; 
   } 
 } 
int findLargest ( int data [  ]  ,  int size )   { 
  int i = 0 ,  largest = 0 ; 
  largest = data [ 0 ]  ; 
  while  ( i < size )   { 
    if  ( data [ i ]  > largest )  largest = data [ i ]  ; 
    i++ ; 
   } 
  return largest ; 
 } 
int findSmallest ( int data [  ]  ,  int size )   { 
  int i = 0 ,  smallest = 0 ; 
  smallest = data [ 0 ]  ; 
  while  ( i < size )   { 
    if  ( data [ i ]  < smallest )  smallest = data [ i ]  ; 
    i++ ; 
   } 
  return smallest ; 
 } 
int entry_point ( int ( *temptemp1 )  ,  int ( *temptemp2 )  )   { 
  int arr [ 10 ]  ; 
  readElements ( arr ,  10 )  ; 
   { 
     ( *temptemp1 )  = findLargest ( arr ,  10 )  ; 
     ; 
   } 
   { 
     ( *temptemp2 )  = findSmallest ( arr ,  10 )  ; 
     ; 
   } 
  return 0 ; 
 } 
