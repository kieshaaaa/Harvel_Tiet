#include <stdio.h>

int entry_point ( int ( *size )  ,  int ( *arr )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  )   { 
  int end ; 
  int start ; 
  int temp ; 
   ; 
   ; 
  int i = 0 ; 
   { 
     ( *temptemp1 )  = i + 1 ; 
     ; 
   } 
 } 
start = 0 ; 
end =  ( *size )  - 1 ; 
while  ( start < end )   { 
  temp = arr [ start ]  ; 
  arr [ start ]  = arr [ end ]  ; 
  arr [ end ]  = temp ; 
  start++ ; 
  end-- ; 
 }  ; 
int i = 0 ; 
 { 
   ( *temptemp2 )  = arr [ i ]  ; 
   ; 
 } 
 } 
return 0 ; 
 } 
