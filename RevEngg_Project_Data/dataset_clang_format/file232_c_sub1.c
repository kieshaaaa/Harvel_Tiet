#include <stdio.h>

int entry_point ( int ( *number_of_elements )  ,  int ( *array )  ,  int ( *temptemp1 )  , 
                int ( *temptemp2 )  )   { 
  int compare_index ; 
  int current_index ; 
  int temp ; 
   ; 
  for  ( current_index = 0 ;  current_index <  ( *number_of_elements )  ; 
       current_index++ )   { 
     { 
       ( *temptemp1 )  = current_index + 1 ; 
       ; 
     } 
   } 
  for  ( current_index = 1 ;  current_index <  ( *number_of_elements )  ; 
       current_index++ )   { 
    temp = array [ current_index ]  ; 
    compare_index = current_index - 1 ; 
    while  ( compare_index >= 0 && array [ compare_index ]  > temp )   { 
      array [ compare_index + 1 ]  = array [ compare_index ]  ; 
      compare_index-- ; 
     } 
    array [ compare_index + 1 ]  = temp ; 
   }  ; 
  for  ( current_index = 0 ;  current_index <  ( *number_of_elements )  ; 
       current_index++ )   { 
     { 
       ( *temptemp2 )  = array [ current_index ]  ; 
       ; 
     } 
   }  ; 
  return 0 ; 
 } 
