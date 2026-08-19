#include <stdio.h>

int entry_point ( int ( *size )  ,  int ( *arr )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  )   { 
  int count ; 
  int j ; 
  int i ; 
   ; 
  for  ( i = 0 ;  i <  ( *size )  ;  i++ )   { 
   }  ; 
  for  ( i = 0 ;  i <  ( *size )  ;  i++ )   { 
    count = 1 ; 
    if  ( arr [ i ]  != -1 )   { 
      for  ( j = i + 1 ;  j <  ( *size )  ;  j++ )   { 
        if  ( arr [ i ]  == arr [ j ]  )   { 
          count++ ; 
          arr [ j ]  = -1 ; 
         } 
       } 
       { 
         ( *temptemp1 )  = arr [ i ]  ; 
         ( *temptemp2 )  = count ; 
         ; 
       } 
     } 
   } 
  return 0 ; 
 } 
