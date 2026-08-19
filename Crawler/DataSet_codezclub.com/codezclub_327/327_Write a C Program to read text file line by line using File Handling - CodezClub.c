/* Source: https://www.codezclub.com/c-read-text-file-using-file-handling/ */
/*  C Program to read text file line by line using File Handling  */

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
   char ch, file_name[20];
   FILE *fp;
   printf("Enter the name of file:: ");
   gets(file_name);
   fp = fopen(file_name,"r");
   if( fp == NULL )
    {
    printf("\nCan not open the file.");
        exit(0);
   }
   printf("\nThe contents of %s file is :\n", file_name);
   while( ( ch = fgetc(fp) ) != EOF )
      printf("%c",ch);
   fclose(fp);

   return 0;
}