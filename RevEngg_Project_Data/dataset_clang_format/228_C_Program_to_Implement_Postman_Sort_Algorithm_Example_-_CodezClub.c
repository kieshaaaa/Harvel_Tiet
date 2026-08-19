#include <stdio.h>

void arrange ( int ,  int )  ; 
int array [ 100 ]  ,  array1 [ 100 ]  ; 
int i ,  j ,  temp ,  max ,  count ,  maxdigits = 0 ,  c = 0 ; 
void entry_point ( int ( *count )  ,  int ( *array )  ,  int ( *temptemp1 )  )   { 
  int n = 1 ; 
  int t ; 
  int k ; 
  int t2 ; 
  int t1 ; 
   ; 
   ; 
  for  ( i = 0 ;  i <  ( *count )  ;  i++ )   { 
    array1 [ i ]  = array [ i ]  ; 
   } 
  for  ( i = 0 ;  i <  ( *count )  ;  i++ )   { 
    t = array [ i ]  ; 
    while  ( t > 0 )   { 
      c++ ; 
      t = t / 10 ; 
     } 
    if  ( maxdigits < c )  maxdigits = c ; 
    c = 0 ; 
   } 
  while  ( --maxdigits )  n = n * 10 ; 
  for  ( i = 0 ;  i <  ( *count )  ;  i++ )   { 
    max = array [ i ]  / n ; 
    t = i ; 
    for  ( j = i + 1 ;  j <  ( *count )  ;  j++ )   { 
      if  ( max >  ( array [ j ]  / n )  )   { 
        max = array [ j ]  / n ; 
        t = j ; 
       } 
     } 
    temp = array1 [ t ]  ; 
    array1 [ t ]  = array1 [ i ]  ; 
    array1 [ i ]  = temp ; 
    temp = array [ t ]  ; 
    array [ t ]  = array [ i ]  ; 
    array [ i ]  = temp ; 
   } 
  while  ( n >= 1 )   { 
    for  ( i = 0 ;  i <  ( *count )  ;  )   { 
      t1 = array [ i ]  / n ; 
      for  ( j = i + 1 ;  t1 ==  ( array [ j ]  / n )  ;  j++ ) 
         ; 
      arrange ( i ,  j )  ; 
      i = j ; 
     } 
    n = n / 10 ; 
   }  ; 
  for  ( i = 0 ;  i <  ( *count )  ;  i++ )   { 
     ( *temptemp1 )  = array1 [ i ]  ; 
     ; 
   }  ; 
 } 
void arrange ( int k ,  int n )   { 
  for  ( i = k ;  i < n - 1 ;  i++ )   { 
    for  ( j = i + 1 ;  j < n ;  j++ )   { 
      if  ( array1 [ i ]  > array1 [ j ]  )   { 
        temp = array1 [ i ]  ; 
        array1 [ i ]  = array1 [ j ]  ; 
        array1 [ j ]  = temp ; 
        temp =  ( array [ i ]  % 10 )  ; 
        array [ i ]  =  ( array [ j ]  % 10 )  ; 
        array [ j ]  = temp ; 
       } 
     } 
   } 
 } 
