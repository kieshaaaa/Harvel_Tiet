#include <stdio.h>

int entry_point ( char ( *ch )  ,  char ( *temptemp1 )  ,  char ( *temptemp2 )  )   { 
   ; 
  switch  (  ( *ch )  )   { 
    case 'a':
    case 'A':
    case 'e':
    case 'E':
    case 'i':
    case 'I':
    case 'o':
    case 'O':
    case 'u':
    case 'U':  { 
       ( *temptemp1 )  =  ( *ch )  ; 
       ; 
     }  break ; 
    default:  { 
       ( *temptemp2 )  =  ( *ch )  ; 
       ; 
     } 
   } 
  return 0 ; 
 } 
