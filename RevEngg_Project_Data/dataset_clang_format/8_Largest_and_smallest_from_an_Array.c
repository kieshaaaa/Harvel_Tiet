#include <stdio.h>

int entry_point ( int ( *a )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  ,  int ( *temptemp3 )  , 
                int ( *temptemp4 )  )   { 
  int index2 ; 
  int maximum ; 
  int index1 ; 
  int minimum ; 
  int i ; 
   ; 
  for  ( i = 0 ;  i < 10 ;  i++ )   { 
   } 
  minimum = a [ 0 ]  ; 
  maximum = a [ 0 ]  ; 
  for  ( i = 0 ;  i < 10 ;  i++ )   { 
    if  ( minimum > a [ i ]  )   { 
      minimum = a [ i ]  ; 
      index1 = i ; 
     } 
    if  ( maximum < a [ i ]  )   { 
      maximum = a [ i ]  ; 
      index2 = i ; 
     } 
   } 
   { 
     ( *temptemp1 )  = minimum ; 
     ; 
   } 
   { 
     ( *temptemp2 )  = index1 ; 
     ; 
   } 
   { 
     ( *temptemp3 )  = maximum ; 
     ; 
   } 
   { 
     ( *temptemp4 )  = index2 ; 
     ; 
   } 
  return 0 ; 
 } 
