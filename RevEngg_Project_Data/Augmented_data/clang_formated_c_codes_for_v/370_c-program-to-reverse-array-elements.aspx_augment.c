#include <stdio.h>

void inputArray ( int data [  ]  ,  int size )   { 
  int i = 0 ; 
   ; 
  while  ( i < size )   { 
     ; 
    i++ ; 
   } 
 } 
void displayArray ( int data [  ]  ,  int size )   { 
  int i = 0 ; 
   ; 
  while  ( i < size )   { 
     ; 
    i++ ; 
   }  ; 
 } 
void orderArray ( int data [  ]  ,  int size )   { 
  int i = 0 ,  j = 0 ,  temp ; 
  while  ( i < size - 1 )   { 
    j = i + 1 ; 
    while  ( j < size )   { 
      if  ( data [ i ]  > data [ j ]  )   { 
        temp = data [ i ]  ; 
        data [ i ]  = data [ j ]  ; 
        data [ j ]  = temp ; 
       } 
      j++ ; 
     } 
    i++ ; 
   } 
 } 
int entry_point (  )   { 
  int arr [ 5 ]  ; 
  inputArray ( arr ,  5 )  ; 
   ; 
  displayArray ( arr ,  5 )  ; 
  orderArray ( arr ,  5 )  ; 
   ; 
  displayArray ( arr ,  5 )  ; 
  return 0 ; 
 } 
