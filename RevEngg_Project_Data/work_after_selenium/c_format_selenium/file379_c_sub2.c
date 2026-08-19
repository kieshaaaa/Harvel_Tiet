#include <stdio.h>

int entry_point ( int ( *nums )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  ,  int ( *temptemp3 )  , 
                int ( *temptemp4 )  )   { 
  int i ; 
  int maxIndex ; 
  int minIndex ; 
   ; 
  for  ( i = 0 ;  i < 10 ;  i++ )   { 
   } 
  minIndex = maxIndex = 0 ; 
  for  ( i = 1 ;  i < 10 ;  i++ )   { 
    if  ( nums [ i ]  < nums [ minIndex ]  )  minIndex = i ; 
   } 
  for  ( i = 1 ;  i < 10 ;  i++ )   { 
    if  ( nums [ i ]  > nums [ maxIndex ]  )  maxIndex = i ; 
   } 
   { 
     ( *temptemp1 )  = nums [ minIndex ]  ; 
     ; 
   } 
   { 
     ( *temptemp2 )  = minIndex ; 
     ; 
   } 
   { 
     ( *temptemp3 )  = nums [ maxIndex ]  ; 
     ; 
   } 
   { 
     ( *temptemp4 )  = maxIndex ; 
     ; 
   } 
  return 0 ; 
 } 
