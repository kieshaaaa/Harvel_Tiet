#include <stdio.h>

int entry_point ( int ( *size )  ,  int ( *arr )  ,  int ( *num )  ,  int ( *temptemp1 )  , 
                int ( *temptemp2 )  ,  int ( *temptemp3 )  ,  int ( *temptemp4 )  )   { 
  int flag ; 
  int i ; 
   ; 
   ; 
  for  ( i = 0 ;  i <  ( *size )  ;  i++ )   { 
     { 
       ( *temptemp1 )  = i + 1 ; 
       ; 
     } 
   }  ; 
  flag = 0 ; 
  for  ( i = 0 ;  i <  ( *size )  ;  i++ )   { 
    if  ( arr [ i ]  ==  ( *num )  )   { 
      flag = 1 ; 
       { 
         ( *temptemp2 )  =  ( *num )  ; 
         ( *temptemp3 )  = i + 1 ; 
         ; 
       } 
      break ; 
     } 
   } 
  if  ( flag == 0 )   { 
     { 
       ( *temptemp4 )  =  ( *num )  ; 
       ; 
     } 
   } 
  return 0 ; 
 } 
