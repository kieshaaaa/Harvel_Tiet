/* Source: https://www.codezclub.com/c-program-fibonacci-numbers/ */
/*  C Program to Generate Fibonacci Series using for loop  */

#include<stdio.h>

int main()
{
    int limit, first = 0, second = 1, third;

    printf("\nEnter Limit upto which u want :: ");
    scanf("%d", &limit);

    printf("\nGenerating Fibonacci Series Below :: \n\n ");
    for(;first<limit;)
    {
        printf(" %d ", first);
        third = first + second;
        first = second;
        second = third;
    }


    return 0;
}