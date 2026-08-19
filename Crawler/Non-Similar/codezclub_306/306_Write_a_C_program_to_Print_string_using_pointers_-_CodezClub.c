/* Source: https://www.codezclub.com/c-print-string-using-pointers/ */
/*  C program to Print string using pointers  */

#include <stdio.h>
int main()
{
    char str[100];
    char *ptr;

    printf("Enter any string :: ");
    scanf("%s",str);

    //assign address of str to ptr
    ptr=str;

    printf("\nThe entered string is :: ");

    while(*ptr!='\0')
        printf("%c",*ptr++);

    return 0;
}