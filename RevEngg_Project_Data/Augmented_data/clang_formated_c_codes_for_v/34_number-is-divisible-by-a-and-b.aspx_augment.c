#include <stdio.h>

int checkDivisibility ( int num ,  int a ,  int b )   { 
  if  ( num % a == 0 && num % b == 0 ) 
    return 1 ; 
  else
    return 0 ; 
 } 
int entry_point ( int ( *number )  ,  int ( *divisor1 )  ,  int ( *divisor2 )  ,  int ( *temptemp1 )  , 
                int ( *temptemp2 )  ,  int ( *temptemp3 )  ,  int ( *temptemp4 )  , 
                int ( *temptemp5 )  ,  int ( *temptemp6 )  )   { 
   ; 
   ; 
   ; 
   ; 
   ; 
  if  ( checkDivisibility (  ( *number )  ,   ( *divisor1 )  ,   ( *divisor2 )  )  )   { 
     ( *temptemp1 )  =  ( *number )  ; 
     ( *temptemp2 )  =  ( *divisor1 )  ; 
     ( *temptemp3 )  =  ( *divisor2 )  ; 
     ; 
   }  else  { 
     ( *temptemp4 )  =  ( *number )  ; 
     ( *temptemp5 )  =  ( *divisor1 )  ; 
     ( *temptemp6 )  =  ( *divisor2 )  ; 
     ; 
   } 
  return 0 ; 
 } 
