#include <stdio.h>

int entry_point ( int ( *n )  ,  int ( *arr )  ,  int ( *item )  ,  char ( *cont )  ,  int ( *temptemp1 )  , 
                int ( *temptemp2 )  ,  int ( *temptemp3 )  ,  int ( *temptemp4 )  )   { 
  int i ; 
   ; 
  for  ( i = 0 ;  i <  ( *n )  ;  i++ )   { 
     { 
       ( *temptemp1 )  = i + 1 ; 
       ; 
     } 
   } 
  while  (  ( *cont )  == 'y' ||  ( *cont )  == 'Y' )   { 
     ; 
    for  ( i = 0 ;  i <  ( *n )  ;  i++ )   { 
      if  ( arr [ i ]  ==  ( *item )  )   { 
         { 
           ( *temptemp2 )  =  ( *item )  ; 
           ( *temptemp3 )  = i ; 
           ; 
         } 
        break ; 
       } 
     } 
    if  ( i ==  ( *n )  )   { 
       { 
         ( *temptemp4 )  =  ( *item )  ; 
         ; 
       } 
     }  ; 
   } 
  return 0 ; 
 } 
