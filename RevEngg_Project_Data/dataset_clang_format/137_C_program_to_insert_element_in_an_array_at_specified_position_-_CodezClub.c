#include <stdio.h>

int entry_point ( int ( *size )  ,  int ( *arr )  ,  int ( *num )  ,  int ( *position )  , 
                int ( *temptemp1 )  ,  int ( *temptemp2 )  ,  int ( *temptemp3 )  , 
                int ( *temptemp4 )  )   { 
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
   }  ; 
   ; 
  if  (  ( *position )  >  ( *size )  + 1 ||  ( *position )  <= 0 )   { 
     { 
       ( *temptemp3 )  =  ( *size )  ; 
       ; 
     } 
   }  else  { 
    for  ( i =  ( *size )  ;  i >=  ( *position )  ;  i-- )   { 
      arr [ i ]  = arr [ i - 1 ]  ; 
     } 
    arr [  ( *position )  - 1 ]  =  ( *num )  ; 
     ( *size ) ++ ; 
     ; 
    for  ( i = 0 ;  i <  ( *size )  ;  i++ )   { 
       { 
         ( *temptemp4 )  = arr [ i ]  ; 
         ; 
       } 
     } 
   } 
  return 0 ; 
 } 
