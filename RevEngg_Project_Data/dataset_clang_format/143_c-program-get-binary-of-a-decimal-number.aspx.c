

void getBinary ( int )  ; 
int entry_point ( int ( *num )  ,  int ( *temptemp1 )  )   { 
   ; 
   { 
     ( *temptemp1 )  =  ( *num )  ; 
     ; 
   } 
  getBinary (  ( *num )  )  ; 
  return 0 ; 
 } 
void getBinary ( int n )   { 
  int loop ; 
  for  ( loop = 15 ;  loop >= 0 ;  loop-- )   { 
    if  (  ( 1 << loop )  & n ) 
       ; 
    else
       ; 
   } 
 } 
