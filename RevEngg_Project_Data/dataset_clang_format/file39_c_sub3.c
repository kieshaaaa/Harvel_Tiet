#include <stdio.h>

int entry_point ( int ( *temptemp1 )  ,  int ( *temptemp2 )  ,  int ( *temptemp3 )  , 
                int ( *temptemp4 )  )   { 
  int var2 = 200 ; 
  int var1 = 100 ; 
  int temp ; 
   { 
     ( *temptemp1 )  = var1 ; 
     ( *temptemp2 )  = var2 ; 
     ; 
   } 
  temp = var1 ; 
  var1 = var2 ; 
  var2 = temp ; 
   { 
     ( *temptemp3 )  = var1 ; 
     ( *temptemp4 )  = var2 ; 
     ; 
   } 
  return 0 ; 
 } 
