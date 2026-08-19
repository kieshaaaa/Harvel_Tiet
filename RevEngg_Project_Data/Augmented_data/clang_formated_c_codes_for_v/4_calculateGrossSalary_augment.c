#include <stdio.h>

int entry_point ( float ( *basicSalary )  ,  float ( *temptemp1 )  ,  float ( *temptemp2 )  , 
                float ( *temptemp3 )  ,  float ( *temptemp4 )  ,  float ( *temptemp5 )  )   { 
  float grossSalary ; 
  float conveyance ; 
  float dearnessAllowance ; 
  float houseRentAllowance ; 
   ; 
  if  (  ( *basicSalary )  >= 5000 )   { 
    dearnessAllowance = 110 *  ( *basicSalary )  / 100 ; 
    houseRentAllowance = 20 *  ( *basicSalary )  / 100 ; 
    conveyance = 500 ; 
   }  else if  (  ( *basicSalary )  >= 3000 &&  ( *basicSalary )  < 5000 )   { 
    dearnessAllowance = 100 *  ( *basicSalary )  / 100 ; 
    houseRentAllowance = 15 *  ( *basicSalary )  / 100 ; 
    conveyance = 400 ; 
   }  else if  (  ( *basicSalary )  < 3000 )   { 
    dearnessAllowance = 90 *  ( *basicSalary )  / 100 ; 
    houseRentAllowance = 10 *  ( *basicSalary )  / 100 ; 
    conveyance = 300 ; 
   } 
  grossSalary =
       ( *basicSalary )  + dearnessAllowance + houseRentAllowance + conveyance ; 
   { 
     ( *temptemp1 )  =  ( *basicSalary )  ; 
     ; 
   } 
   { 
     ( *temptemp2 )  = dearnessAllowance ; 
     ; 
   } 
   { 
     ( *temptemp3 )  = houseRentAllowance ; 
     ; 
   } 
   { 
     ( *temptemp4 )  = conveyance ; 
     ; 
   } 
   { 
     ( *temptemp5 )  = grossSalary ; 
     ; 
   } 
  return 0 ; 
 } 
