#include <stdio.h>    

int entry_point ( int ( *num ) ,  int ( *temptemp1 ) ,  int ( *temptemp2 )  )   { 
 int remainder ; # int sign = 1 ; 
 int i ; 
 ; 
 for  ( i = 2 ;  i <=  ( *num )  ;  i++ )   { 
     remainder =  ( *num )  % i ;
         if  ( remainder == 0 ) 
         { 
             sign = 0 ; 
             break ; 
          } 
 } 
 if  ( sign ) 
  ( *temptemp1 )  =  ( *num )  ; 
 else 
 ( *temptemp2 )  =  ( *num )  ;  
 return 0 ; 
}


