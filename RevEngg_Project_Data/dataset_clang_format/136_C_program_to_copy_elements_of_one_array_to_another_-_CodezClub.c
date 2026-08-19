#include <stdio.h>

int entry_point ( int ( *size )  ,  int ( *first )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  , 
                int ( *temptemp3 )  ,  int ( *temptemp4 )  )   { 
  int second [ 100 ]  ; 
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
    second [ i ]  = first [ i ]  ; 
   }  ; 
  for  ( i = 0 ;  i <  ( *size )  ;  i++ )   { 
     { 
       ( *temptemp3 )  = first [ i ]  ; 
       ; 
     } 
   }  ; 
  for  ( i = 0 ;  i <  ( *size )  ;  i++ )   { 
     { 
       ( *temptemp4 )  = second [ i ]  ; 
       ; 
     } 
   } 
  return 0 ; 
 } 
