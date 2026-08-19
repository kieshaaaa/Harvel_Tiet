#include <stdio.h>

int entry_point ( int ( *num )  ,  int ( *start )  ,  int ( *end )  ,  int ( *temptemp1 )  , 
                int ( *temptemp2 )  ,  int ( *temptemp3 )  ,  int ( *temptemp4 )  , 
                int ( *temptemp5 )  ,  int ( *temptemp6 )  )   { 
  int i ; 
   ; 
   ; 
   ; 
  if  (  ( *start )  <=  ( *end )  )   { 
    for  ( i =  ( *start )  ;  i <=  ( *end )  ;  i++ )   { 
      int result =  ( *num )  * i ; 
       { 
         ( *temptemp1 )  =  ( *num )  ; 
         ( *temptemp2 )  = i ; 
         ( *temptemp3 )  = result ; 
         ; 
       } 
     } 
   }  else  { 
    for  ( i =  ( *start )  ;  i >=  ( *end )  ;  i-- )   { 
      int result =  ( *num )  * i ; 
       { 
         ( *temptemp4 )  =  ( *num )  ; 
         ( *temptemp5 )  = i ; 
         ( *temptemp6 )  = result ; 
         ; 
       } 
     } 
   } 
  return 0 ; 
 } 
