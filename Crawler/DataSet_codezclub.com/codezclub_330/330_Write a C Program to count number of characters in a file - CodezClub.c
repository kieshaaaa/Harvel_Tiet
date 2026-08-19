/* Source: https://www.codezclub.com/c-count-characters-file/ */
/*  C Program to count number of characters in a file using File Handling  */

/* -----------------file4.txt contains text-------------

  Perpetual sincerity out suspected necessary
  one but provision satisfied. Respect nothing
  use set waiting pursuit nay you looking.
  If on prevailed concluded ye abilities.
  Address say you new but minuter greater.
  Do denied agreed in innate. Can and
  middletons thoroughly themselves him.
  Tolerably sportsmen belonging in september
  no am immediate newspaper. Theirs expect
  dinner it pretty indeed having no of.
  Principle september she conveying did
  eat may extensive.

-------------------------------------------------------*/


#include<stdio.h>

int main()
{
     FILE *fp;
     char a[100];
     long cnt=0;
     int c;

     printf("Type a file name : ");
     gets(a);

     if((fp=fopen(a,"r"))==NULL)
      printf("\nFile dosen't exist.");
     else
     {
      while(1)
      {
       c=fgetc(fp);
       if(feof(fp))
        break;
       cnt++;
      }
      printf("\nFile have %ld characters. \n",cnt);
     }
     fclose(fp);
     return 0;
}