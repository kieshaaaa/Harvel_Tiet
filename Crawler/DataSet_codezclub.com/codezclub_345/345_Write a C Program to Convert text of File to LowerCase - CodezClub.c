/* Source: https://www.codezclub.com/c-convert-text-file-lowercase/ */
/* C Program to Convert text of File to LowerCase  */

#include <stdio.h>
#include <errno.h>

int to_lower_file(FILE *);

int main()
{
    int op = -1;
    char ch;
    char * arrr = "C:\\Users\\acer\\Documents\\file2.txt";
    FILE *fp;
    if (fp = fopen(arrr, "r+"))
    {
        printf("FILE has been opened..!!!\n");
        op = to_lower_file(fp);
        printf(" %d \n", op);
        fclose(fp);
    }
    else
    {
        perror("Error Occured");
        printf(" %d\n ", op);
    }

    return 0;
}

int to_lower_file(FILE *f)
{
    int c;
    char ch;
    while ((ch = fgetc(f))!= EOF)
    {
        c = (int)ch;
        if (c >= 65 && c <= 90)
        {
            ch = ch + 32;
            fseek(f, -1L, 1);
            fputc(ch, f);
        }
    }
    return 0;
}