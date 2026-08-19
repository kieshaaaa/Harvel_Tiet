#include <stdio.h>

void readArray ( int arr [  ]  ,  int size )   { 
  int i = 0 ; 
   ; 
  for  ( i = 0 ;  i < size ;  i++ )   { 
     ; 
   } 
 } 
void printArray ( int arr [  ]  ,  int size )   { 
  int i = 0 ; 
   ; 
  for  ( i = 0 ;  i < size ;  i++ )   { 
     ; 
   }  ; 
 } 
void sortArray ( int arr [  ]  ,  int size )   { 
  int i = 0 ,  j = 0 ,  temp ; 
  for  ( i = 0 ;  i < size - 1 ;  i++ )   { 
    for  ( j = i + 1 ;  j < size ;  j++ )   { 
      if  ( arr [ i ]  > arr [ j ]  )   { 
        temp = arr [ i ]  ; 
        arr [ i ]  = arr [ j ]  ; 
        arr [ j ]  = temp ; 
       } 
     } 
   } 
 } 
int entry_point (  )   { 
  int arr [ 5 ]  ; 
  readArray ( arr ,  5 )  ; 
   ; 
  printArray ( arr ,  5 )  ; 
  sortArray ( arr ,  5 )  ; 
   ; 
  printArray ( arr ,  5 )  ; 
  return 0 ; 
 } 
