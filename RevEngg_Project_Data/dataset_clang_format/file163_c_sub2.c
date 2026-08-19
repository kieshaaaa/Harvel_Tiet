#include <stdio.h>

int entry_point ( int ( *arr )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  ,  int ( *temptemp3 )  )   { 
  int i ; 
  int position ; 
  int n ; 
   ; 
  while  ( scanf ( "%d" ,  &n )  != 1 || n < 1 || n > 100 )   { 
     ; 
    while  ( getchar (  )  != '\n' ) 
       ; 
   }  ; 
  for  ( i = 0 ;  i < n ;  i++ )   { 
   } 
   { 
     ( *temptemp1 )  = n ; 
     ; 
   } 
  while  ( scanf ( "%d" ,  &position )  != 1 || position < 1 || position > n )   { 
     { 
       ( *temptemp2 )  = n ; 
       ; 
     } 
    while  ( getchar (  )  != '\n' ) 
       ; 
   } 
  for  ( i = position - 1 ;  i < n - 1 ;  i++ )   { 
    arr [ i ]  = arr [ i + 1 ]  ; 
   }  ; 
  for  ( i = 0 ;  i < n - 1 ;  i++ )   { 
     { 
       ( *temptemp3 )  = arr [ i ]  ; 
       ; 
     } 
   }  ; 
  return 0 ; 
 } 
