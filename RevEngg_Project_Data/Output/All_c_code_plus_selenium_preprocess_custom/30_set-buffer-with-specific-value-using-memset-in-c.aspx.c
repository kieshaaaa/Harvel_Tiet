#include <string.h>
#include <stdio.h>

int entry_point(char (*temptemp1), char (*temptemp2), char (*temptemp3), char (*temptemp4), int (*temptemp5))
{
char buffer[10]={0};
int i;
{
(*temptemp1) = buffer ;
;
}
 memset(buffer,' ', 9);
{
(*temptemp2) = buffer ;
;
}
 memset(buffer,'x', 9);
{
(*temptemp3) = buffer ;
;
}
 memset(buffer,15, 9);
{
(*temptemp4) = buffer ;
;
}
;
 for(i=0;i<10;i++){
{
(*temptemp5) = buffer[i] ;
;
}
 }
;
 return 0;
}
