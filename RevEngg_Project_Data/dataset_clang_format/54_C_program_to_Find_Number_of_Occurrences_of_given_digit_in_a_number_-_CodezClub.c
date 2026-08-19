#include <stdio.h>

int entry_point ( int ( *num )  ,  int ( *digit )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  , 
                int ( *temptemp3 )  )   { 
  int cnt ; 
  int tNum ; 
  int rem ; 
   ; 
   ; 
  cnt = 0 ; 
  tNum =  ( *num )  ; 
  while  ( tNum > 0 )   { 
    rem = tNum % 10 ; 
    if  ( rem ==  ( *digit )  )  cnt++ ; 
    tNum /= 10 ; 
   } 
   { 
     ( *temptemp1 )  =  ( *digit )  ; 
     ( *temptemp2 )  =  ( *num )  ; 
     ( *temptemp3 )  = cnt ; 
     ; 
   } 
  return 0 ; 
 } 
