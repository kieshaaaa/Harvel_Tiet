/* Source: https://www.codezclub.com/c-program-find-size-file-file-handling/ */
/*  C Program to Find Size of File in File Handling  */

#include <stdio.h>

int main()
{
    FILE *fp;
    char ch;
    int size = 0;
    char * arrr = "C:\\Users\\acer\\Documents\\file4.txt";
    fp = fopen(arrr, "r");
    if (fp == NULL)
        printf("\nFile unable to open ");
    else
        printf("\nFile opened ");
    fseek(fp, 0, 2);    /* file pointer at the end of file */
    size = ftell(fp);   /* take a position of file pointer un size variable */
    printf("The size of given file is : %d\n", size);
    fclose(fp);

    return 0;
}