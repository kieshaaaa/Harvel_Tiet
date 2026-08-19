#include <stdio.h>

int entry_point ( int ( *size )  ,  int ( *arr )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  )   { 
  int flag [ 100 ]  ; 
  int freq [ 100 ]  ; 
  int j ; 
  int i ; 
   ; 
  for  ( i = 0 ;  i <  ( *size )  ;  i++ )   { 
    freq [ i ]  = 1 ; 
    flag [ i ]  = 0 ; 
   } 
  for  ( i = 0 ;  i <  ( *size )  ;  i++ )   { 
    for  ( j = i + 1 ;  j <  ( *size )  ;  j++ )   { 
      if  ( arr [ i ]  == arr [ j ]  )   { 
        freq [ i ] ++ ; 
        flag [ j ]  = 1 ; 
       } 
     } 
   }  ; 
  for  ( i = 0 ;  i <  ( *size )  ;  i++ )   { 
    if  ( flag [ i ]  == 0 )   { 
       { 
         ( *temptemp1 )  = arr [ i ]  ; 
         ( *temptemp2 )  = freq [ i ]  ; 
         ; 
       } 
     } 
   } 
  return 0 ; 
 } 
