#include <stdio.h>

int entry_point ( int ( *number )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  )   { 
  int tally ; 
  char flag = 0 ; 
   ; 
  for  ( tally = 2 ;  tally <=  (  ( *number )  / 2 )  ;  tally++ )   { 
    if  (  ( *number )  % tally == 0 )   { 
      flag = 1 ; 
      break ; 
     } 
   } 
  if  ( flag == 0 )   { 
     ( *temptemp1 )  =  ( *number )  ; 
     ; 
   }  else  { 
     ( *temptemp2 )  =  ( *number )  ; 
     ; 
   } 
  return 0 ; 
 } 
