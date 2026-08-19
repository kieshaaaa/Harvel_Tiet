#include <stdio.h>

int entry_point ( int ( *maxRows )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  )   { 
   ; 
  if  (  ( *maxRows )  < 1 )   { 
     ; 
    return 0 ; 
   }  ; 
  int row = 1 ; 
  int col ; 
  for  ( col = 1 ;  col <=  ( *maxRows )  - row ;  col++ )   { 
     ; 
   } 
  for  ( col = row ;  col >= 1 ;  col-- )   { 
     { 
       ( *temptemp1 )  = col ; 
       ; 
     } 
   } 
  for  ( col = 2 ;  col <= row ;  col++ )   { 
     { 
       ( *temptemp2 )  = col ; 
       ; 
     } 
   }  ; 
 } 
return 0 ; 
 } 
