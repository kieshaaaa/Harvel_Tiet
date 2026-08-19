#include <stdio.h>

int entry_point ( float ( *basicPay )  ,  float ( *temptemp1 )  ,  float ( *temptemp2 )  , 
                float ( *temptemp3 )  )   { 
  float employerFund ; 
  float employeeFund ; 
   ; 
  employeeFund =  (  ( *basicPay )  / 100 )  * 12.5f ; 
  employerFund =  (  ( *basicPay )  / 100 )  * 12.0f ; 
   { 
     ( *temptemp1 )  =  ( *basicPay )  ; 
     ; 
   } 
   { 
     ( *temptemp2 )  = employeeFund ; 
     ; 
   } 
   { 
     ( *temptemp3 )  = employerFund ; 
     ; 
   } 
  return 0 ; 
 } 
