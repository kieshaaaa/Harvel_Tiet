#include <stdio.h>
#include <string.h>

int entry_point ( char ( *temptemp1 )  ,  char ( *temptemp2 )  ,  char ( *temptemp3 )  , 
                char ( *temptemp4 )  ,  int ( *temptemp5 )  )   { 
  char data [ 10 ]  =  { 0 }  ; 
  int j ; 
   { 
     ( *temptemp1 )  = data ; 
     ; 
   } 
  memset ( data ,  ' ' ,  9 )  ; 
   { 
     ( *temptemp2 )  = data ; 
     ; 
   } 
  memset ( data ,  'x' ,  9 )  ; 
   { 
     ( *temptemp3 )  = data ; 
     ; 
   } 
  memset ( data ,  15 ,  9 )  ; 
   { 
     ( *temptemp4 )  = data ; 
     ; 
   }  ; 
  j = 0 ; 
  while  ( j < 10 )   { 
     { 
       ( *temptemp5 )  = data [ j ]  ; 
       ; 
     } 
    j++ ; 
   }  ; 
  return 0 ; 
 } 
