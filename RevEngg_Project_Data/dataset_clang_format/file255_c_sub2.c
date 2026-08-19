#include <stdio.h>

int entry_point ( int ( *num )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  )   { 
  int cnt = 0 ; 
   ; 
  if  (  ( *num )  == 0 )   { 
    cnt = 1 ; 
   }  else  { 
    do  { 
      cnt++ ; 
       ( *num )  /= 10 ; 
     }  while  (  ( *num )  > 0 )  ; 
   }  ; 
   { 
     ( *temptemp1 )  = cnt ; 
     ; 
   }  ; 
   { 
     ( *temptemp2 )  =  ( *num )  ; 
     ; 
   }  ; 
  return 0 ; 
 } 
