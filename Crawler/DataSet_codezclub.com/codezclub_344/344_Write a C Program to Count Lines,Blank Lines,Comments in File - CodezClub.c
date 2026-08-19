/* Source: https://www.codezclub.com/c-count-lines-blank-lines-comments-file/ */
/*  C Program to Count Lines, Blank Lines, Comments in File  */

#include <stdio.h>

int main()
{
    int line_count = 0, n_o_c_l = 0, n_o_n_b_l = 0, n_o_b_l = 0, n_e_c = 0;
    FILE *fp1;
    char ch;
    char * arrr = "C:\\Users\\acer\\Documents\\file4.txt";
    fp1 = fopen(arrr, "r");

    while ((ch = fgetc(fp1))!= EOF)
    {
        if (ch  ==  '\n')
        {
            line_count++;
        }
        if (ch  ==  '\n')
        {
            if ((ch = fgetc(fp1))  ==  '\n')
            {
                fseek(fp1, -1, 1);
                n_o_b_l++;
            }
        }
        if (ch  ==  ';')
        {
            if ((ch = fgetc(fp1))  ==  '\n')
            {
                fseek(fp1, -1, 1);
                n_e_c++;
            }
        }
    }
    fseek(fp1, 0, 0);
    while ((ch = fgetc(fp1))!= EOF)
    {
        if (ch  ==  '/')
        {
            if ((ch = fgetc(fp1))  ==  '/')
            {
                n_o_c_l++;
            }
        }
    }
    printf("Total no of lines: %d\n", line_count);
    printf("Total no of comment line: %d\n", n_o_c_l);
    printf("Total no of blank lines: %d\n", n_o_b_l);
    printf("Total no of non blank lines: %d\n", line_count-n_o_b_l);
    printf("Total no of lines end with semicolon: %d\n", n_e_c);

    return 0;
}