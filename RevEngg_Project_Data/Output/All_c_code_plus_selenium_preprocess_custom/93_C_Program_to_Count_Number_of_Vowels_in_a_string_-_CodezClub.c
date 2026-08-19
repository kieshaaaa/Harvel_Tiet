#include<stdio.h>

int entry_point(char (*line), int (*temptemp1), int (*temptemp2), int (*temptemp3), int (*temptemp4))
{
int o;
int s;
int d;
int ch;
int c;
int v;
int i;
 o=v=c=ch=d=s=0;
;
 for(i=0;line[i]!='\0';++i)
 {
 if(line[i]=='a' || line[i]=='e' || line[i]=='i' || line[i]=='o' || line[i]=='u' || line[i]=='A' || line[i]=='E' || line[i]=='I' || line[i]=='O' || line[i]=='U')
 ++v;
 else if((line[i]>='a'&& line[i]<='z') || (line[i]>='A'&& line[i]<='Z'))
 ++c;
 else if(line[i]>='0'&& line[i]<='9')
 ++d;
 else if (line[i]==' ')
 ++s;
 }
{
(*temptemp1) = v ;
;
}
{
(*temptemp2) = c ;
;
}
{
(*temptemp3) = d ;
;
}
{
(*temptemp4) = s ;
;
}
 return 0;
}
