#include <stdio.h>

int entry_point ( int ( *decimalNum )  ,  char ( *temptemp1 )  )   { 
  int i ; 
  int index ; 
  char hexadecimal [ 32 ]  ; 
   ; 
  index = 0 ; 
  i = 0 ; 
  for  (  ;   ( *decimalNum )  > 0 ;  i++ )   { 
    switch  (  ( *decimalNum )  % 16 )   { 
      case 10:
        hexadecimal [ index ]  = 'A' ; 
        break ; 
      case 11:
        hexadecimal [ index ]  = 'B' ; 
        break ; 
      case 12:
        hexadecimal [ index ]  = 'C' ; 
        break ; 
      case 13:
        hexadecimal [ index ]  = 'D' ; 
        break ; 
      case 14:
        hexadecimal [ index ]  = 'E' ; 
        break ; 
      case 15:
        hexadecimal [ index ]  = 'F' ; 
        break ; 
      default:
        hexadecimal [ index ]  =  (  ( *decimalNum )  % 16 )  + 0x30 ; 
     } 
     ( *decimalNum )  =  ( *decimalNum )  / 16 ; 
    index++ ; 
   }  ; 
  for  ( i =  ( index - 1 )  ;  i >= 0 ;  i-- )   { 
     ( *temptemp1 )  = hexadecimal [ i ]  ; 
     ; 
   } 
  return 0 ; 
 } 
