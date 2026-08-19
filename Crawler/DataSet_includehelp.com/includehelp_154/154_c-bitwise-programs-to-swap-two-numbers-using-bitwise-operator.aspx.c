/* Source: https://www.includehelp.com/c-programs/c-bitwise-programs-to-swap-two-numbers-using-bitwise-operator.aspx */
/*C program to swap two numbers using bitwise operator.*/

#include <stdio.h>
void swap(int* a, int* b); //function declaration

int main()
{
    int a, b;

    printf("Enter first number: ");
    scanf("%d", &a);
    printf("Enter second number: ");
    scanf("%d", &b);

    printf("Before swapping: a=%d, b=%d\n", a, b);
    swap(&a, &b);
    printf("After swapping:  a=%d, b=%d\n", a, b);

    return 0;
}

//function definition
void swap(int* a, int* b)
{
    *a = *a ^ *b;
    *b = *a ^ *b;
    *a = *a ^ *b;
}
