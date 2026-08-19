#include <stdio.h>

int entry_point ( int ( *count )  ,  int ( *nums )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  )   { 
  int swap ; 
  int l ; 
  int k ; 
   ; 
  for  ( k = 0 ;  k <  ( *count )  ;  k++ )   { 
     { 
       ( *temptemp1 )  = k + 1 ; 
       ; 
     } 
   } 
  for  ( k = 0 ;  k <  ( *count )  - 1 ;  k++ )   { 
    for  ( l = 0 ;  l <  ( *count )  - k - 1 ;  l++ )   { 
      if  ( nums [ l ]  < nums [ l + 1 ]  )   { 
        swap = nums [ l ]  ; 
        nums [ l ]  = nums [ l + 1 ]  ; 
        nums [ l + 1 ]  = swap ; 
       } 
     } 
   }  ; 
  for  ( k = 0 ;  k <  ( *count )  ;  k++ )   { 
     ( *temptemp2 )  = nums [ k ]  ; 
     ; 
   }  ; 
  return 0 ; 
 } 
