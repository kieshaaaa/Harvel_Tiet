#include <math.h>
#include <stdio.h>

int entry_point ( int ( *num )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  )   { 
  int flag = 1 ; 
   ; 
  if  (  ( *num )  < 2 )   { 
     ; 
   }  else  { 
    int i = 2 ; 
    if  (  ( *num )  % i == 0 )   { 
      flag = 0 ; 
      break ; 
     } 
   } 
  if  ( flag == 1 )   { 
     ( *temptemp1 )  =  ( *num )  ; 
     ; 
   }  else  { 
     ( *temptemp2 )  =  ( *num )  ; 
     ; 
   } 
 }  ; 
return 0 ; 
 } 
