#include <stdio.h>

int entry_point ( int ( *size )  ,  int ( *arr )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  )   { 
  int isUnique ; 
  int j ; 
  int i ; 
   ; 
   ; 
  for  ( i = 0 ;  i <  ( *size )  ;  i++ )   { 
     { 
       ( *temptemp1 )  = i + 1 ; 
       ; 
     } 
   }  ; 
  for  ( i = 0 ;  i <  ( *size )  ;  i++ )   { 
    isUnique = 1 ; 
    for  ( j = 0 ;  j <  ( *size )  ;  j++ )   { 
      if  ( i != j && arr [ i ]  == arr [ j ]  )   { 
        isUnique = 0 ; 
        break ; 
       } 
     } 
    if  ( isUnique )   { 
       { 
         ( *temptemp2 )  = arr [ i ]  ; 
         ; 
       } 
     } 
   } 
  return 0 ; 
 } 
