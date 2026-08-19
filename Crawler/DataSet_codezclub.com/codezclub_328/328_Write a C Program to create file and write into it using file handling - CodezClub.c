/* Source: https://www.codezclub.com/c-create-file-store-data-using-file-handling/ */
/*  C Program to create file and write into it using file handling  */

#include<stdio.h>
int main()
{
        FILE *fp;
        char ch;

        fp=fopen("C:\\Users\\acer\\Documents\\file4.txt","w");
        printf("\nEnter the data to be stored in the file::\n");

        while((ch=getchar())!=EOF)
        putc(ch,fp);
        fclose(fp);

        // at run time
    // press ctrl+d in linux
    // ctrl+z in windows to for end of the file(EOF)

        printf("\nData is successfully written to the file.!!!\n ");

        return 0;
}