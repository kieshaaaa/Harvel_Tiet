#include <stdio.h>

int entry_point ( int ( *temptemp1 )  ,  int ( *temptemp2 )  ,  int ( *temptemp3 )  , 
                int ( *temptemp4 )  )   { 
  int array_1 [ 5 ]  =  { 0 ,  1 ,  2 ,  3 ,  4 }  ; 
  int array_2 [ 5 ]  =  { 5 ,  6 ,  7 ,  8 ,  9 }  ; 
  int temp ; 
  temp = array_1 [ 0 ]  ; 
  array_1 [ 0 ]  = array_2 [ 0 ]  ; 
  array_2 [ 0 ]  = temp ; 
  temp = array_1 [ 1 ]  ; 
  array_1 [ 1 ]  = array_2 [ 1 ]  ; 
  array_2 [ 1 ]  = temp ; 
  temp = array_1 [ 2 ]  ; 
  array_1 [ 2 ]  = array_2 [ 2 ]  ; 
  array_2 [ 2 ]  = temp ; 
  temp = array_1 [ 3 ]  ; 
  array_1 [ 3 ]  = array_2 [ 3 ]  ; 
  array_2 [ 3 ]  = temp ; 
  temp = array_1 [ 4 ]  ; 
  array_1 [ 4 ]  = array_2 [ 4 ]  ; 
  array_2 [ 4 ]  = temp ; 
   ; 
  int i = 0 ; 
   { 
     ( *temptemp1 )  = i ; 
     ( *temptemp2 )  = array_1 [ i ]  ; 
     ; 
   } 
 }  ; 
int i = 0 ; 
 { 
   ( *temptemp3 )  = i ; 
   ( *temptemp4 )  = array_2 [ i ]  ; 
   ; 
 } 
 } 
return 0 ; 
 } 
