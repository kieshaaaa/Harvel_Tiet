#include <stdio.h>

void func1 ( int n )  ; 
void func2 ( int n )  ; 
void func3 ( int n )  ; 
int entry_point ( int ( *n )  )   { 
   ; 
   ; 
  func1 (  ( *n )  )  ; 
   ; 
   ; 
  func2 (  ( *n )  )  ; 
   ; 
   ; 
  func3 (  ( *n )  )  ; 
  return 0 ; 
 } 
void func1 ( int n )   { 
  int i ; 
  if  ( n == 0 ) 
    return ; 
  else  { 
    func1 ( n - 1 )  ; 
    for  ( i = 1 ;  i <= n ;  i++ ) 
       ; 
     ; 
   } 
 } 
void func2 ( int n )   { 
  int i ; 
  if  ( n == 0 ) 
    return ; 
  else  { 
    for  ( i = 1 ;  i <= n ;  i++ ) 
       ; 
     ; 
    func2 ( n - 1 )  ; 
   } 
 } 
void func3 ( int n )   { 
  int i ; 
  if  ( n == 0 ) 
    return ; 
  else  { 
    for  ( i = n ;  i >= 1 ;  i-- ) 
       ; 
     ; 
    func3 ( n - 1 )  ; 
   } 
 } 
