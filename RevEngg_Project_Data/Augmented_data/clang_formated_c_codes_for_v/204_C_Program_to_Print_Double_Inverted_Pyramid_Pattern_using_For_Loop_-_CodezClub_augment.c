#include <stdio.h>

int entry_point ( char ( *temptemp1 )  ,  char ( *temptemp2 )  )   { 
  int c ; 
  int b ; 
  int a ; 
  int space = 0 ; 
  int rows = 6 ; 
  char ch = 'A' ; 
  int temp ; 
  int diff [ 7 ]  =  { 0 ,  1 ,  3 ,  5 ,  7 ,  9 ,  11 }  ; 
  c = 0 ; 
  a = rows ; 
  while  ( a >= 0 )   { 
     ; 
    ch = 'A' ; 
    b = a ; 
    while  ( b >= 0 )   { 
       { 
         ( *temptemp1 )  = ch++ ; 
         ; 
       } 
      b-- ; 
     } 
    space = diff [ c++ ]  ; 
    b = 0 ; 
    while  ( b < space )   { 
       ; 
      b++ ; 
     } 
    ch = 'F' -  ( space / 2 )  ; 
    if  ( space == 0 )   { 
      temp = a - 1 ; 
     }  else  { 
      temp = a ; 
     } 
    b = 0 ; 
    while  ( b <= temp )   { 
       { 
         ( *temptemp2 )  = ch-- ; 
         ; 
       } 
      b++ ; 
     } 
    a-- ; 
   } 
  return  ( 0 )  ; 
  return 0 ; 
 } 
