#include <stdio.h>

int entry_point ( int ( *N )  ,  int ( *arr )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  , 
                int ( *temptemp3 )  )   { 
  int i ; 
  int oddCount = 0 ; 
  int evenCount = 0 ; 
   ; 
  for  ( i = 0 ;  i <  ( *N )  ;  i++ )   { 
     { 
       ( *temptemp1 )  = i + 1 ; 
       ; 
     } 
    if  (  (  ( arr [ i ]  )  % 2 == 0 ? 1 : 0 )  )   { 
      evenCount++ ; 
     }  else  { 
      oddCount++ ; 
     } 
   } 
   { 
     ( *temptemp2 )  = evenCount ; 
     ; 
   } 
   { 
     ( *temptemp3 )  = oddCount ; 
     ; 
   } 
  return 0 ; 
 } 
