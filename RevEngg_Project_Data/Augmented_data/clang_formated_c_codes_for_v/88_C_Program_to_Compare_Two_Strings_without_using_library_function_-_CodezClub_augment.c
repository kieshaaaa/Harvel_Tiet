#include <stdio.h>

int entry_point ( char ( *string1 )  ,  char ( *string2 )  )   { 
  int flag = 0 ; 
  int index2 ; 
  int index1 ; 
   ; 
   ; 
  index1 = 0 ; 
  while  ( string1 [ index1 ]  != '\0' )   { 
    index1++ ; 
   } 
  index2 = 0 ; 
  while  ( string2 [ index2 ]  != '\0' )   { 
    index2++ ; 
   } 
  if  ( index1 != index2 )   { 
    flag = 0 ; 
   }  else  { 
    int k = 0 ; 
    while  ( k < index1 && string1 [ k ]  == string2 [ k ]  )   { 
      flag = 1 ; 
      k++ ; 
     } 
    if  ( k < index1 )  flag = 0 ; 
   } 
  if  ( flag == 0 )   { 
     ; 
   }  else  { 
     ; 
   } 
  return 0 ; 
 } 
