#include <stdio.h>
#include <stdlib.h>

void insert (  )  ; 
void delete  (  )  ; 
void display (  )  ; 
int queue_array [ 50 ]  ; 
int rear = -1 ; 
int front = -1 ; 
int entry_point ( int ( *choice )  )   { 
  while  ( 1 )   { 
     ; 
     ; 
     ; 
     ; 
     ; 
    switch  (  ( *choice )  )   { 
      case 1:
        insert (  )  ; 
        break ; 
      case 2:
        delete  (  )  ; 
        break ; 
      case 3:
        display (  )  ; 
        break ; 
      case 4:
        exit ( 1 )  ; 
      default: ; 
     } 
   } 
  return 0 ; 
 } 
void insert (  )   { 
  int add_item ; 
  if  ( rear == 50 - 1 ) 
     ; 
  else  { 
    if  ( front == -1 )  front = 0 ; 
     ; 
    rear = rear + 1 ; 
    queue_array [ rear ]  = add_item ; 
   } 
 } 
void delete  (  )   { 
  if  ( front == -1 || front > rear )   { 
     ; 
    return ; 
   }  else  { 
     ; 
    front = front + 1 ; 
   } 
 } 
void display (  )   { 
  int i ; 
  if  ( front == -1 ) 
     ; 
  else  { 
     ; 
    for  ( i = front ;  i <= rear ;  i++ ) 
       ; 
     ; 
   } 
 } 
