#include <stdio.h>

int entry_point ( float ( *temptemp1 )  ,  float ( *temptemp2 )  )   { 
  float numbers [ 5 ]  =  { 1.0 ,  2.0 ,  3.0 ,  4.0 ,  5.0 }  ; 
  float total = 0.0 ; 
  float average ; 
  int i ; 
  for  ( i = 0 ;  i < 5 ;  i++ )   { 
    total += numbers [ i ]  ; 
   } 
  average = total / 5 ; 
   { 
     ( *temptemp1 )  = total ; 
     ; 
   } 
   { 
     ( *temptemp2 )  = average ; 
     ; 
   } 
  return 0 ; 
 } 
