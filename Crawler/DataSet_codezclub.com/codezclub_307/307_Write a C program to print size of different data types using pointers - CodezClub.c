/* Source: https://www.codezclub.com/c-print-size-different-types-using-pointers/ */
/*  C program to print size of different data types using pointers  */

#include <stdio.h>

int main()
{
    printf("Size of char pointer: %d\n"     ,sizeof(char*));
    printf("\nSize of int pointer: %d\n"      ,sizeof(int*));
    printf("\nSize of float pointer: %d\n"    ,sizeof(float*));
    printf("\nSize of long int pointer: %d\n" ,sizeof(long int*));
    printf("\nSize of double pointer: %d\n" ,sizeof(double*));

    return 0;
}