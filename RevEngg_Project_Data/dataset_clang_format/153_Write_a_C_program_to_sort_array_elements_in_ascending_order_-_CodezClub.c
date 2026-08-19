#include <stdio.h>

int entry_point ( int ( *size )  ,  int ( *arr )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  )   { 
  int temp ; 
  int j ; 
  int i ; 
   ; 
   ; 
  for  ( i = 0 ;  i <  ( *size )  ;  i++ )   { 
     { 
       ( *temptemp1 )  = i + 1 ; 
       ; 
     } 
   } 
  for  ( i = 0 ;  i <  ( *size )  ;  i++ )   { 
    for  ( j = i + 1 ;  j <  ( *size )  ;  j++ )   { 
      if  ( arr [ j ]  < arr [ i ]  )   { 
        temp = arr [ i ]  ; 
        arr [ i ]  = arr [ j ]  ; 
        arr [ j ]  = temp ; 
       } 
     } 
   }  ; 
  for  ( i = 0 ;  i <  ( *size )  ;  i++ )   { 
     { 
       ( *temptemp2 )  = arr [ i ]  ; 
       ; 
     } 
   } 
  return 0 ; 
 } 
