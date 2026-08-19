

void stringLwr ( char *s )  ; 
void stringUpr ( char *s )  ; 
int entry_point ( char ( *temptemp1 )  ,  char ( *temptemp2 )  )   { 
  char str [ 100 ]  ; 
   ; 
  stringLwr ( str )  ; 
   { 
     ( *temptemp1 )  = str ; 
     ; 
   } 
  stringUpr ( str )  ; 
   { 
     ( *temptemp2 )  = str ; 
     ; 
   } 
  return 0 ; 
 } 
void stringLwr ( char *s )   { 
  int i = 0 ; 
  while  ( s [ i ]  != '\0' )   { 
    if  ( s [ i ]  >= 'A' && s [ i ]  <= 'Z' )   { 
      s [ i ]  = s [ i ]  + 32 ; 
     } 
    ++i ; 
   } 
 } 
void stringUpr ( char *s )   { 
  int i = 0 ; 
  while  ( s [ i ]  != '\0' )   { 
    if  ( s [ i ]  >= 'a' && s [ i ]  <= 'z' )   { 
      s [ i ]  = s [ i ]  - 32 ; 
     } 
    ++i ; 
   } 
 } 
