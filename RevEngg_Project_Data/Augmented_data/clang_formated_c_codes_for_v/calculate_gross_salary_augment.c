#include <stdio.h>

int entry_point ( float ( *basic_salary )  ,  float ( *temptemp1 )  ,  float ( *temptemp2 )  , 
                float ( *temptemp3 )  ,  float ( *temptemp4 )  ,  float ( *temptemp5 )  )   { 
  float gross_salary ; 
  float conveyance_allowance ; 
  float dearness_allowance ; 
  float house_rent_allowance ; 
   ; 
  if  (  ( *basic_salary )  >= 5000 )   { 
    dearness_allowance = 110 *  ( *basic_salary )  / 100 ; 
    house_rent_allowance = 20 *  ( *basic_salary )  / 100 ; 
    conveyance_allowance = 500 ; 
   }  else if  (  ( *basic_salary )  >= 3000 &&  ( *basic_salary )  < 5000 )   { 
    dearness_allowance = 100 *  ( *basic_salary )  / 100 ; 
    house_rent_allowance = 15 *  ( *basic_salary )  / 100 ; 
    conveyance_allowance = 400 ; 
   }  else if  (  ( *basic_salary )  < 3000 )   { 
    dearness_allowance = 90 *  ( *basic_salary )  / 100 ; 
    house_rent_allowance = 10 *  ( *basic_salary )  / 100 ; 
    conveyance_allowance = 300 ; 
   } 
  gross_salary =  ( *basic_salary )  + dearness_allowance + house_rent_allowance +
                 conveyance_allowance ; 
   { 
     ( *temptemp1 )  =  ( *basic_salary )  ; 
     ; 
   } 
   { 
     ( *temptemp2 )  = dearness_allowance ; 
     ; 
   } 
   { 
     ( *temptemp3 )  = house_rent_allowance ; 
     ; 
   } 
   { 
     ( *temptemp4 )  = conveyance_allowance ; 
     ; 
   } 
   { 
     ( *temptemp5 )  = gross_salary ; 
     ; 
   } 
  return 0 ; 
 } 
