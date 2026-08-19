/* Source: https://www.codezclub.com/c-read-text-file-print-on-screen/ */
/*  C Program To read text file and print it on screen using File Handling */

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


#include <stdio.h>
#include <stdlib.h>

int main()
{
        FILE *fp;
        char s;
        fp=fopen("C:\\Users\\acer\\Documents\\file4.txt","r");
        if(fp==NULL)
        {
                printf("\nCAN NOT OPEN FILE");
                exit(1);
        }
        do
{
                s=getc(fp);
                printf("%c",s);
        }
        while(s!=EOF);
        fclose(fp);

        return 0;

}