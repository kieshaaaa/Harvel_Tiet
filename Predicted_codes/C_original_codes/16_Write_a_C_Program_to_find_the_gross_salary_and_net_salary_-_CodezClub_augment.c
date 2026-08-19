#include <stdio.h>

int entry_point ( char ( *employeeName )  ,  float ( *basicSalary )  ,  float ( *temptemp1 )  , 
                float ( *temptemp2 )  )   { 
  float netSalary ; 
  float grossSalary ; 
  float providentFund ; 
  float incomeTax ; 
  float houseRentAllowance ; 
  float dearnessAllowance ; 
   ; 
   ; 
  providentFund = 0.08 *  ( *basicSalary )  ; 
  if  (  ( *basicSalary )  < 5000 )   { 
    dearnessAllowance = 0.3 *  ( *basicSalary )  ; 
    houseRentAllowance = 0.08 *  ( *basicSalary )  ; 
   }  else if  (  (  ( *basicSalary )  >= 5000 )  &&  (  ( *basicSalary )  < 10000 )  )   { 
    dearnessAllowance = 0.4 *  ( *basicSalary )  ; 
    houseRentAllowance = 0.1 *  ( *basicSalary )  ; 
   }  else  { 
    dearnessAllowance = 0.5 *  ( *basicSalary )  ; 
    houseRentAllowance = 0.2 *  ( *basicSalary )  ; 
   } 
  grossSalary =  ( *basicSalary )  + dearnessAllowance + houseRentAllowance ; 
  netSalary = grossSalary - incomeTax + providentFund ; 
   { 
     ( *temptemp1 )  = grossSalary ; 
     ; 
   } 
   { 
     ( *temptemp2 )  = netSalary ; 
     ; 
   } 
  return 0 ; 
 } 