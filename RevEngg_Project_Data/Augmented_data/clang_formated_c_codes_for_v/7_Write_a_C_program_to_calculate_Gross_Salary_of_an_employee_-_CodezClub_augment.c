#include <stdio.h>

int entry_point ( char ( *employeeName )  ,  float ( *basicSalary )  , 
                float ( *houseRentAllowance )  ,  float ( *dearnessAllowance )  , 
                char ( *temptemp1 )  ,  float ( *temptemp2 )  ,  float ( *temptemp3 )  , 
                float ( *temptemp4 )  ,  float ( *temptemp5 )  ,  float ( *temptemp6 )  )   { 
  float grossSalary ; 
  float providentFund ; 
   ; 
   ; 
   ; 
   ; 
  providentFund =  (  ( *basicSalary )  * 12 )  / 100 ; 
  grossSalary =  ( *basicSalary )  +  ( *dearnessAllowance )  +  ( *houseRentAllowance )  +
                providentFund ; 
   { 
     ( *temptemp1 )  =  ( *employeeName )  ; 
     ( *temptemp2 )  =  ( *basicSalary )  ; 
     ( *temptemp3 )  =  ( *houseRentAllowance )  ; 
     ( *temptemp4 )  =  ( *dearnessAllowance )  ; 
     ( *temptemp5 )  = providentFund ; 
     ( *temptemp6 )  = grossSalary ; 
     ; 
   } 
  return 0 ; 
 } 
