#include <stdio.h>

int entry_point ( char ( *name )  ,  float ( *basic )  ,  float ( *temptemp1 )  , 
                float ( *temptemp2 )  )   { 
  float net ; 
  float gross ; 
  float tax ; 
  float pf ; 
  float hra ; 
  float da ; 
   ; 
   ; 
  pf =  ( *basic )  * 0.08 ; 
  if  (  ( *basic )  < 5000 )   { 
    da =  ( *basic )  * 0.3 ; 
    hra =  ( *basic )  * 0.08 ; 
   }  else  { 
    da =  ( *basic )  < 10000 ?  ( *basic )  * 0.4 :  ( *basic )  * 0.5 ; 
    hra =  ( *basic )  < 10000 ?  ( *basic )  * 0.1 :  ( *basic )  * 0.2 ; 
   } 
  gross =  ( *basic )  + da + hra ; 
  tax = gross * 0.05 ; 
  net = gross - tax - pf ; 
   { 
     ( *temptemp1 )  = gross ; 
     ; 
   } 
   { 
     ( *temptemp2 )  = net ; 
     ; 
   } 
  return 0 ; 
 } 
