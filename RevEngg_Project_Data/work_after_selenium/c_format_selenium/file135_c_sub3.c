#include <stdio.h>

int entry_point ( int ( *temptemp1 )  ,  int ( *temptemp2 )  ,  float ( *temptemp3 )  , 
                float ( *temptemp4 )  )   { 
  int j ; 
  int i ; 
  float l ; 
  float k ; 
  i = 10 ,  j = 20 ,  k = 30.5 ,  l = 40.5 ; 
   { 
     ( *temptemp1 )  = i ; 
     ; 
   } 
   { 
     ( *temptemp2 )  = j ; 
     ; 
   } 
   { 
     ( *temptemp3 )  = k ; 
     ; 
   } 
   { 
     ( *temptemp4 )  = l ; 
     ; 
   } 
  return 0 ; 
 } 
