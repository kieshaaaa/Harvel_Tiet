#include <stdio.h>

int minVal = 0 ,  numCount = 0 ,  dataArray [ 100 ]  =  { 0 }  ,  sortedArray [ 100 ]  =  { 0 }  ; 
void entry_point ( int ( *numCount )  ,  int ( *dataArray )  ,  int ( *temptemp1 )  )   { 
  int n ; 
  int t ; 
  int temp ; 
  int j ; 
  int i ; 
  int k ; 
   ; 
   ; 
  i = 0 ; 
  while  ( i <  ( *numCount )  )   { 
    sortedArray [ i ]  = dataArray [ i ]  ; 
    i++ ; 
   } 
  k = 0 ; 
  while  ( k < 3 )   { 
    i = 0 ; 
    while  ( i <  ( *numCount )  )   { 
      minVal = dataArray [ i ]  % 10 ; 
      t = i ; 
      j = i + 1 ; 
      while  ( j <  ( *numCount )  )   { 
        if  ( minVal >  ( dataArray [ j ]  % 10 )  )   { 
          minVal = dataArray [ j ]  % 10 ; 
          t = j ; 
         } 
        j++ ; 
       } 
      temp = sortedArray [ t ]  ; 
      sortedArray [ t ]  = sortedArray [ i ]  ; 
      sortedArray [ i ]  = temp ; 
      temp = dataArray [ t ]  ; 
      dataArray [ t ]  = dataArray [ i ]  ; 
      dataArray [ i ]  = temp ; 
      i++ ; 
     } 
    j = 0 ; 
    while  ( j <  ( *numCount )  )   { 
      dataArray [ j ]  = dataArray [ j ]  / 10 ; 
      j++ ; 
     } 
    k++ ; 
   }  ; 
  i = 0 ; 
  while  ( i <  ( *numCount )  )   { 
     { 
       ( *temptemp1 )  = sortedArray [ i ]  ; 
       ; 
     } 
    i++ ; 
   } 
 } 
