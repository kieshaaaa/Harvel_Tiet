#include <stdio.h>

int entry_point ( int ( *size )  ,  int ( *arr )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  )   { 
  int count [ 100 ]  =  { 0 }  ; 
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
      if  ( arr [ i ]  == arr [ j ]  )   { 
        count [ i ] ++ ; 
        count [ j ] ++ ; 
       } 
     } 
   }  ; 
  for  ( i = 0 ;  i <  ( *size )  ;  i++ )   { 
    if  ( count [ i ]  == 0 )   { 
       { 
         ( *temptemp2 )  = arr [ i ]  ; 
         ; 
       } 
     } 
   } 
  return 0 ; 
 } 
