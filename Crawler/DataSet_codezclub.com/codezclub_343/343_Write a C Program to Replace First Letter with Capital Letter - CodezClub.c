/* Source: https://www.codezclub.com/c-program-replace-first-letter-capital-letter/ */
/*  C Program to Replace First Letter with Capital Letter  */

#include <stdio.h>
#include <stdlib.h>

int main()
{
    FILE *fp1;
    int return_val;
    char * arrr = "C:\\Users\\acer\\Documents\\file4.txt";

    if ((fp1 = fopen(arrr,"r")) == NULL)
    {
        printf("file cant be opened");
        exit(0);
    }
    return_val = init_cap_file(fp1);
    if (return_val == 1)
    {
        printf("\nsuccess");
    }
    else
    {
        printf("\n failure");
    }

    return 0;
}

int init_cap_file(FILE *fp1)
{
    char ch;

    ch = fgetc(fp1);
    if (ch >= 97 && ch <= 122)
    {
        fseek(fp1, -1L, 1);
        fputc(ch - 32, fp1);
    }
    while (ch != EOF)
    {
        if (ch == ' '|| ch == '\n')
        {
            ch = fgetc(fp1);
            if (ch >= 97 && ch <= 122)
            {
                fseek(fp1, -1L, 1);
                fputc(ch - 32, fp1);
            }
        }
        else
            ch = fgetc(fp1);
    }
    return 1;
}