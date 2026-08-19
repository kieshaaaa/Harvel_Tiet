#include <stdio.h>

int entry_point ( int ( *size )  ,  char ( *temptemp1 )  )   { 
   ; 
  if  (  ( *size )  <= 0 )   { 
     ; 
    return 0 ; 
   } 
   ( *size )  =  ( *size )  % 2 == 0 ?  ( *size )  + 1 :  ( *size )  ; 
  int row = 1 ; 
  int col = 1 ; 
  char toPrint =  ( col ==  ( *size )  / 2 + 1 || row ==  ( *size )  / 2 + 1 )  ? '*' : ' ' ; 
   { 
     ( *temptemp1 )  = toPrint ; 
     ; 
   } 
 }  ; 
 } 
return 0 ; 
 } 
