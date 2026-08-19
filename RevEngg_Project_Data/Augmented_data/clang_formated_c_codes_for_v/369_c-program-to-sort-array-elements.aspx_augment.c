#include <stdio.h>

void readElements ( int data [  ]  ,  int size )   { 
  int i = 0 ; 
   ; 
  while  ( i < size )   { 
     ; 
    i++ ; 
   } 
 } 
void displayElements ( int data [  ]  ,  int size )   { 
  int i = 0 ; 
   ; 
  while  ( i < size )   { 
     ; 
    i++ ; 
   }  ; 
 } 
void orderElements ( int data [  ]  ,  int size )   { 
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
  readElements ( arr ,  5 )  ; 
   ; 
  displayElements ( arr ,  5 )  ; 
  orderElements ( arr ,  5 )  ; 
   ; 
  displayElements ( arr ,  5 )  ; 
  return 0 ; 
 } 
