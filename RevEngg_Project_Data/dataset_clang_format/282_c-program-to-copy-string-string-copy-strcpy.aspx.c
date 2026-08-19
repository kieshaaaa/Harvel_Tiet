

void stringCpy ( char* s1 ,  char* s2 )  ; 
int entry_point ( char ( *temptemp1 )  ,  char ( *temptemp2 )  )   { 
  char str2 [ 100 ]  ; 
  char str1 [ 100 ]  ; 
   ; 
  stringCpy ( str2 ,  str1 )  ; 
   { 
     ( *temptemp1 )  = str1 ; 
     ( *temptemp2 )  = str2 ; 
     ; 
   } 
  return 0 ; 
 } 
void stringCpy ( char* s1 ,  char* s2 )   { 
  int i = 0 ; 
  while  ( s2 [ i ]  != '\0' )   { 
    s1 [ i ]  = s2 [ i ]  ; 
    i++ ; 
   } 
  s1 [ i ]  = '\0' ; 
 } 
