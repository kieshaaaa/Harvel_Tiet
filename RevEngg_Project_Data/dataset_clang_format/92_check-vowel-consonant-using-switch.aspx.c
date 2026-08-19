#include <stdio.h>

int entry_point ( char ( *ch )  ,  char ( *temptemp1 )  ,  char ( *temptemp2 )  , 
                char ( *temptemp3 )  )   { 
   ; 
  if  (  (  ( *ch )  >= 'A' &&  ( *ch )  <= 'Z' )  ||  (  ( *ch )  >= 'a' &&  ( *ch )  <= 'z' )  )   { 
    switch  (  ( *ch )  )   { 
      case 'A':
      case 'E':
      case 'I':
      case 'O':
      case 'U':
      case 'a':
      case 'e':
      case 'i':
      case 'o':
      case 'u':  { 
         ( *temptemp1 )  =  ( *ch )  ; 
         ; 
       }  break ; 
                    default :  { 
           ( *temptemp2 )  =  ( *ch )  ; 
           ; 
         } 
     } 
   }  else  { 
     { 
       ( *temptemp3 )  =  ( *ch )  ; 
       ; 
     } 
   } 
  return 0 ; 
 } 
