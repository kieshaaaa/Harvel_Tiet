/* Source: https://www.codezclub.com/c-copy-data-one-to-another-file/ */
/*  C Program to copy one file to another with output using File handling  */

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
#include<stdlib.h>

int main()
{
        FILE *fs,*ft;
        char ch;
        fs=fopen("C:\\Users\\acer\\Documents\\file4.txt","r");
        if(fs==NULL){
                puts("\nError: File not found");
                exit(0);
        }
        ft=fopen("C:\\Users\\acer\\Documents\\file5.txt","w");
        if(ft==NULL){
                puts("\nCannot open the target file");
                exit(0);
        }
        while(1){

                ch=fgetc(fs);
                if(ch==EOF)
                        break;
                else
                        fputc(ch,ft);
        }
        fclose(fs);
        fclose(ft);
        printf("\nFile is Successfully copied.!!!\n");

        ft = fopen("C:\\Users\\acer\\Documents\\file5.txt","r");
    printf("\nThe contents of copied file is :\n");
   while(( ch = fgetc(ft) ) != EOF )
      printf("%c",ch);
         fclose(ft);

        return 0;
}