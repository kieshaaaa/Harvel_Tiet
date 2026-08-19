#include <stdio.h>

int entry_point ( int ( *size )  ,  int ( *arr )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  , 
                int ( *temptemp3 )  )   { 
  int isUnique ; 
  int k ; 
  int j ; 
  int i ; 
   ; 
   { 
     ( *temptemp1 )  =  ( *size )  ; 
     ; 
   } 
  for  ( i = 0 ;  i <  ( *size )  ;  i++ )   { 
     { 
       ( *temptemp2 )  = i + 1 ; 
       ; 
     } 
   } 
  for  ( i = 0 ;  i <  ( *size )  ;  i++ )   { 
    isUnique = 1 ; 
    for  ( j = i + 1 ;  j <  ( *size )  ;  j++ )   { 
      if  ( arr [ i ]  == arr [ j ]  )   { 
        for  ( k = j ;  k <  ( *size )  - 1 ;  k++ )   { 
          arr [ k ]  = arr [ k + 1 ]  ; 
         } 
         ( *size ) -- ; 
        j-- ; 
        isUnique = 0 ; 
       } 
     } 
    if  ( isUnique != 1 )   { 
      for  ( j = i ;  j <  ( *size )  - 1 ;  j++ )   { 
        arr [ j ]  = arr [ j + 1 ]  ; 
       } 
       ( *size ) -- ; 
      i-- ; 
     } 
   }  ; 
  for  ( i = 0 ;  i <  ( *size )  ;  i++ )   { 
     { 
       ( *temptemp3 )  = arr [ i ]  ; 
       ; 
     } 
   } 
  return 0 ; 
 } 
