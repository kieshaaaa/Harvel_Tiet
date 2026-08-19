#include <stdio.h>

int entry_point ( int ( *n )  ,  int ( *arr )  ,  int ( *position )  ,  int ( *temptemp1 )  , 
                int ( *temptemp2 )  ,  int ( *temptemp3 )  ,  int ( *temptemp4 )  )   { 
  int i ; 
   ; 
   { 
     ( *temptemp1 )  =  ( *n )  ; 
     ; 
   } 
  for  ( i = 0 ;  i <  ( *n )  ;  i++ )   { 
     { 
       ( *temptemp2 )  = i + 1 ; 
       ; 
     } 
   }  ; 
  if  (  ( *position )  ==  ( *n )  + 1 ||  ( *position )  < 0 )   { 
     { 
       ( *temptemp3 )  =  ( *n )  ; 
       ; 
     } 
   }  else  { 
    for  ( i =  ( *position )  - 1 ;  i <  ( *n )  - 1 ;  i++ )   { 
      arr [ i ]  = arr [ i + 1 ]  ; 
     } 
   }  ; 
  for  ( i = 0 ;  i <  ( *n )  - 1 ;  i++ )   { 
     { 
       ( *temptemp4 )  = arr [ i ]  ; 
       ; 
     } 
   } 
  return 0 ; 
 } 
