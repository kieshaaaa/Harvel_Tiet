#include <stdio.h>

void PFactors ( int num )  ; 
void IPFactors ( int n )  ; 
int entry_point ( int ( *num )  )   { 
   ; 
   ; 
  PFactors (  ( *num )  )  ; 
   ; 
   ; 
  IPFactors (  ( *num )  )  ; 
   ; 
  return 0 ; 
 } 
void PFactors ( int num )   { 
  int i = 2 ; 
  if  ( num == 1 )  return ; 
  while  ( num % i != 0 )  i++ ; 
   ; 
  PFactors ( num / i )  ; 
 } 
void IPFactors ( int num )   { 
  int i ; 
  for  ( i = 2 ;  num != 1 ;  i++ ) 
    while  ( num % i == 0 )   { 
       ; 
      num = num / i ; 
     } 
 } 
