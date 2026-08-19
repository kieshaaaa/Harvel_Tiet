#include <stdio.h>

int entry_point ( int ( *temptemp1 )  ,  int ( *temptemp2 )  ,  int ( *temptemp3 )  , 
                int ( *temptemp4 )  ,  int ( *temptemp5 )  ,  int ( *temptemp6 )  , 
                int ( *temptemp7 )  ,  int ( *temptemp8 )  )   { 
  int a = 5 ; 
  int *pa ; 
  int **ppa ; 
  pa = &a ; 
  ppa = &pa ; 
   { 
     ( *temptemp1 )  = &a ; 
     ; 
   } 
   { 
     ( *temptemp2 )  = pa ; 
     ; 
   } 
   { 
     ( *temptemp3 )  = *pa ; 
     ; 
   } 
   { 
     ( *temptemp4 )  = &pa ; 
     ; 
   } 
   { 
     ( *temptemp5 )  = ppa ; 
     ; 
   } 
   { 
     ( *temptemp6 )  = *ppa ; 
     ; 
   } 
   { 
     ( *temptemp7 )  = **ppa ; 
     ; 
   } 
   { 
     ( *temptemp8 )  = &ppa ; 
     ; 
   } 
  return 0 ; 
 } 
