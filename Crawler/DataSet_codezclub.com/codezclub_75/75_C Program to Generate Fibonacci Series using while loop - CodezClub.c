/* Source: https://www.codezclub.com/c-program-fibonacci-numbers/ */
/*  C Program to Generate Fibonacci Series using while loop  */

#include<stdio.h>

int main()
{
    int lim_up, A = 0, B = 1, C;

    printf("\nEnter Limit upto which u want :: ");
    scanf("%d", &lim_up);

    printf("\nGenerating Fibonacci Series Below :: \n\n ");
    while(A<lim_up)
    {
        printf(" %d ", A);
        C = A + B;
        A = B;
        B = C;
    }


    return 0;
}