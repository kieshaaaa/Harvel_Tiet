#include <stdio.h>

void readData ( int arr [  ]  ,  int size )   { 
  int i = 0 ; 
  while  ( i < size )   { 
     ; 
    i++ ; 
   } 
 } 
int locateElement ( int arr [  ]  ,  int size ,  int item )   { 
  int i = 0 ,  pos = -1 ; 
  while  ( i < size )   { 
    if  ( arr [ i ]  == item )   { 
      pos = i ; 
      break ; 
     } 
    i++ ; 
   } 
  return pos ; 
 } 
int entry_point ( int ( *n )  ,  int ( *item )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  , 
                int ( *temptemp3 )  )   { 
  int arr [ 20 ]  ; 
  int pos ; 
   ; 
   ; 
  readData ( arr ,   ( *n )  )  ; 
   ; 
  pos = locateElement ( arr ,   ( *n )  ,   ( *item )  )  ; 
  if  ( pos == -1 )   { 
     ( *temptemp1 )  =  ( *item )  ; 
     ; 
   }  else  { 
     ( *temptemp2 )  =  ( *item )  ; 
     ( *temptemp3 )  = pos ; 
     ; 
   }  ; 
  return 0 ; 
 } 
