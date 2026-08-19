#include <stdio.h>

int entry_point ( int ( *lb )  ,  int ( *ub )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  , 
                int ( *temptemp3 )  ,  int ( *temptemp4 )  )   { 
  int a = 0 ; 
  int b = 1 ; 
  int c = 0 ; 
   ; 
   ; 
  if  (  ( *lb )  == 0 )   { 
     { 
       ( *temptemp1 )  = a ; 
       ; 
     } 
    if  (  ( *ub )  == 0 )  return 0 ; 
     { 
       ( *temptemp2 )  = b ; 
       ; 
     } 
   }  else if  (  ( *lb )  == 1 )   { 
     { 
       ( *temptemp3 )  = b ; 
       ; 
     } 
   } 
  c = a + b ; 
  for  (  ;  c <=  ( *ub )  ;  )   { 
    if  ( c >=  ( *lb )  )   { 
       { 
         ( *temptemp4 )  = c ; 
         ; 
       } 
     } 
    a = b ; 
    b = c ; 
    c = a + b ; 
   } 
  return 0 ; 
 } 
