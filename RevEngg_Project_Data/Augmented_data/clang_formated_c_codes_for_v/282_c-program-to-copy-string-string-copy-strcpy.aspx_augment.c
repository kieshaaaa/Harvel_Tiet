

void myStrCpy ( char* dest ,  char* source )  ; 
int entry_point ( char ( *temptemp1 )  ,  char ( *temptemp2 )  )   { 
  char str2 [ 100 ]  ; 
  char str1 [ 100 ]  ; 
   ; 
  myStrCpy ( str2 ,  str1 )  ; 
   { 
     ( *temptemp1 )  = str1 ; 
     ( *temptemp2 )  = str2 ; 
     ; 
   } 
  return 0 ; 
 } 
void myStrCpy ( char* dest ,  char* source )   { 
  int i = 0 ; 
  for  (  ;  source [ i ]  != '\0' ;  i++ )   { 
    dest [ i ]  = source [ i ]  ; 
   } 
  dest [ i ]  = '\0' ; 
 } 
