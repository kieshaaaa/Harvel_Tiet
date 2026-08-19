/* Source: https://www.codezclub.com/c-program-calculate-length-string-using-recursion/ */
/*  C program to calculate length of string using recursion */

#include <stdio.h>

//function to calculate length of string using recursion

int stringLength(char *str)
{
    static int length=0;
    if(*str!=NULL)
    {
        length++;
        stringLength(++str);
    }
    else
    {
        return length;
    }
}

int main()
{
    char str[100];
    int length=0;

    printf("Enter any string :: ");
    scanf("%s",str);

    length=stringLength(str);

    printf("\nLength of String [ %s ] is :: %d\n",str,length);

    return 0;
}