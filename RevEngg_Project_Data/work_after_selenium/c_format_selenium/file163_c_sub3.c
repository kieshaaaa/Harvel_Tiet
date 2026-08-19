#include <stdio.h>

int entry_point ( int ( *n )  ,  int ( *arr )  ,  int ( *position )  ,  int ( *temptemp1 )  )   { 
  int i ; 
   ; 
  for  ( i = 0 ;  i <  ( *n )  ;  i++ )   { 
   }  ; 
  if  (  ( *position )  > 0 &&  ( *position )  <=  ( *n )  )   { 
    for  ( i =  ( *position )  ;  i <  ( *n )  ;  i++ )   { 
      arr [ i - 1 ]  = arr [ i ]  ; 
     } 
     ( *n ) -- ; 
   }  else  { 
     ; 
    return 1 ; 
   } 
  for  ( i = 0 ;  i <  ( *n )  ;  i++ )   { 
     { 
       ( *temptemp1 )  = arr [ i ]  ; 
       ; 
     } 
   }  ; 
  return 0 ; 
 } 
