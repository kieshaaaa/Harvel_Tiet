/* Source: https://www.codezclub.com/c-write-file-using-fprintf-function/ */
/*  C Program to write data into a file using fprintf() function  */

#include <stdio.h>
int main()
{
        FILE * fp;
        char file_name[50];

        printf("Enter the file name :: ");
        scanf("%s",file_name);
        fp = fopen (file_name, "w");

        fprintf(fp, "%s %s %s", "Welcome", "to", "CodezClub");
        printf("\nSuccessfully written to the file %s \n",file_name);

        fclose(fp);
        return 0;
}