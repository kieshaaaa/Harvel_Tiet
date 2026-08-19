#include <stdio.h>

unsigned int revBits ( unsigned int data )   { 
  unsigned char totalBits = sizeof ( data )  * 8 ; 
  unsigned int revNum = 0 ,  i ,  temp ; 
  for  ( i = 0 ;  i < totalBits ;  i++ )   { 
    temp =  ( data &  ( 1 << i )  )  ; 
    if  ( temp )  revNum |=  ( 1 <<  (  ( totalBits - 1 )  - i )  )  ; 
   } 
  return revNum ; 
 } 
int entry_point ( unsigned int ( *temptemp1 )  )   { 
  unsigned int num = 0x4 ; 
   { 
     ( *temptemp1 )  = revBits ( num )  ; 
     ; 
   } 
  return 0 ; 
 } 
