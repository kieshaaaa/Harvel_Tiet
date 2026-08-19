/* Source: https://www.codezclub.com/write-c-program-merge-two-files-using-file-handling/ */
/*  C program to Merge two files using file handling  */

/* -----------------file4.txt contains text-------------

  Perpetual sincerity out suspected necessary
  one but provision satisfied. Respect nothing
  use set waiting pursuit nay you looking.
  If on prevailed concluded ye abilities.
  Address say you new but minuter greater.

-----------------file5.txt contains text-------------

  Do denied agreed in innate. Can and
  middletons thoroughly themselves him.
  Tolerably sportsmen belonging in september
  no am immediate newspaper. Theirs expect
  dinner it pretty indeed having no of.
  Principle september she conveying did
  eat may extensive.

-------------------------------------------------------*/


#include<stdio.h>
#include<conio.h>
#include<stdlib.h>

int main()
{

        FILE *fs1, *fs2, *ft;
        char ch, file1[50], file2[50], file3[50];
        printf("Enter name of first file :: ");
        gets(file1);
        printf("\nEnter name of second file :: ");
        gets(file2);
        printf("\nEnter name of file which will store contents of two files :: ");
        gets(file3);
        fs1 = fopen(file1,"r");
        fs2 = fopen(file2,"r");
        if( fs1 == NULL || fs2 == NULL ) {
                perror("Error ");
                printf("Press any key to exit...\n");
                exit(EXIT_FAILURE);
        }
        ft = fopen(file3,"w");
        if( ft == NULL ) {
                perror("Error ");
                printf("Press any key to exit...\n");
                exit(EXIT_FAILURE);
        }
        while( ( ch = fgetc(fs1) ) != EOF )
              fputc(ch,ft);
        while( ( ch = fgetc(fs2) ) != EOF )
              fputc(ch,ft);
        printf("\nTwo files were merged into %s file successfully.\n",file3);
        fclose(fs1);
        fclose(fs2);
        fclose(ft);

        return 0;
}