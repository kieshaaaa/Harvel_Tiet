#include <stdio.h>

void PrintPrimeFactors ( int n )   { 
  int i = 2 ; 
  while  ( n != 1 )   { 
    while  ( n % i == 0 )   { 
       ; 
      n = n / i ; 
     } 
    i++ ; 
   } 
 } 
int entry_point ( int ( *num )  )   { 
   ; 
   ; 
  PrintPrimeFactors (  ( *num )  )  ; 
   ; 
  return 0 ; 
 } 
