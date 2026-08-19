#include <stdio.h>
#include <stdlib.h>

int entry_point ( int ( *grade )  ,  int ( *temptemp1 )  ,  float ( *temptemp2 )  )   { 
  int score ; 
  int sum = 0 ; 
  int gradeNum = 0 ; 
  float avg = 0 ; 
  int pass = 0 ; 
  int totalGrades = 0 ; 
  while  (  ( *grade )  != -1 )   { 
    if  (  ( *grade )  <= 100 &&  ( *grade )  >= 70 )   { 
      pass = pass + 1 ; 
       { 
         ( *temptemp1 )  = pass ; 
         ; 
       } 
     } 
    if  (  ( *grade )  >= 0 &&  ( *grade )  <= 100 )   { 
      totalGrades = totalGrades + 1 ; 
     }  ; 
   } 
  avg = 100 * pass / totalGrades ; 
   { 
     ( *temptemp2 )  = avg ; 
     ; 
   } 
  return 0 ; 
 } 
