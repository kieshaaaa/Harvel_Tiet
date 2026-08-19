#include <stdio.h>

int entry_point ( char ( *str )  ,  char ( *temptemp1 )  ,  char ( *temptemp2 )  )   { 
  int flag = 0 ; 
  int idx2 = 0 ; 
  int idx1 = 0 ; 
   ; 
  while  ( str [ idx2 ]  != '\0' )   { 
    idx2++ ; 
   } 
  for  ( idx1 = 0 ;  idx1 < idx2 ;  idx1++ )   { 
    idx2-- ; 
    if  ( str [ idx1 ]  != str [ idx2 ]  )   { 
      flag = 1 ; 
      break ; 
     } 
   } 
  if  ( flag == 0 )   { 
     ( *temptemp1 )  =  ( *str )  ; 
     ; 
   }  else  { 
     ( *temptemp2 )  =  ( *str )  ; 
     ; 
   } 
  return 0 ; 
 } 
