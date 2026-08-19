#include <stdio.h>

int entry_point ( int ( *num )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  )   { 
  int i ; 
  int found = 0 ; 
   ; 
  for  ( i = 0 ;  i * i <=  ( *num )  ;  i++ )   { 
    if  ( i * i ==  ( *num )  )   { 
      found = 1 ; 
      break ; 
     } 
   } 
  if  ( found == 1 )   { 
     ( *temptemp1 )  =  ( *num )  ; 
     ; 
   }  else  { 
     ( *temptemp2 )  =  ( *num )  ; 
     ; 
   } 
  return 0 ; 
 } 
