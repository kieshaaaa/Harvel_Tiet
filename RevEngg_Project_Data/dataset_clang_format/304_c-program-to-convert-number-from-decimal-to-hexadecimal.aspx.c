#include <stdio.h>

int entry_point ( int ( *number )  ,  char ( *temptemp1 )  )   { 
  int i ; 
  int cnt ; 
  char hex [ 32 ]  ; 
   ; 
  cnt = 0 ; 
  while  (  ( *number )  > 0 )   { 
    switch  (  ( *number )  % 16 )   { 
      case 10:
        hex [ cnt ]  = 'A' ; 
        break ; 
      case 11:
        hex [ cnt ]  = 'B' ; 
        break ; 
      case 12:
        hex [ cnt ]  = 'C' ; 
        break ; 
      case 13:
        hex [ cnt ]  = 'D' ; 
        break ; 
      case 14:
        hex [ cnt ]  = 'E' ; 
        break ; 
      case 15:
        hex [ cnt ]  = 'F' ; 
        break ; 
      default:
        hex [ cnt ]  =  (  ( *number )  % 16 )  + 0x30 ; 
     } 
     ( *number )  =  ( *number )  / 16 ; 
    cnt++ ; 
   }  ; 
  for  ( i =  ( cnt - 1 )  ;  i >= 0 ;  i-- )   { 
     ( *temptemp1 )  = hex [ i ]  ; 
     ; 
   } 
  return 0 ; 
 } 
