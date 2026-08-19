#include <math.h>
#include <stdio.h>

int entry_point ( int ( *num )  ,  int ( *temptemp1 )  ,  int ( *temptemp2 )  )   { 
  int iVar ; 
  float fVar ; 
   ; 
  fVar = sqrt (  ( double )  ( *num )  )  ; 
  iVar = fVar ; 
  if  ( iVar == fVar )   { 
     ( *temptemp1 )  =  ( *num )  ; 
     ; 
   }  else  { 
     ( *temptemp2 )  =  ( *num )  ; 
     ; 
   } 
  return 0 ; 
 } 
