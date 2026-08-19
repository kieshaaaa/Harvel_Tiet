#include <stdio.h>

int entry_point ( int ( *size )  ,  int ( *arr )  ,  int ( *num )  ,  int ( *temptemp1 )  , 
                int ( *temptemp2 )  ,  int ( *temptemp3 )  ,  int ( *temptemp4 )  )   { 
  int foundPos = -1 ; 
  int i ; 
   ; 
  for  ( i = 0 ;  i <  ( *size )  ;  i++ )   { 
     { 
       ( *temptemp1 )  = i + 1 ; 
       ; 
     } 
   }  ; 
  for  ( i = 0 ;  i <  ( *size )  ;  i++ )   { 
    if  ( arr [ i ]  ==  ( *num )  )   { 
      foundPos = i ; 
      break ; 
     } 
   } 
  if  ( foundPos != -1 )   { 
     { 
       ( *temptemp2 )  =  ( *num )  ; 
       ( *temptemp3 )  = foundPos + 1 ; 
       ; 
     } 
   }  else  { 
     { 
       ( *temptemp4 )  =  ( *num )  ; 
       ; 
     } 
   } 
  return 0 ; 
 } 
