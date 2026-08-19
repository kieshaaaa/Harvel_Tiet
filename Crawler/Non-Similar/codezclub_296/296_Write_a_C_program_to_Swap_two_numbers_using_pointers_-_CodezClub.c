/* Source: https://www.codezclub.com/write-c-program-swap-two-numbers-using-pointers/ */
/*  C program to Swap two numbers using pointers  */

#include<stdio.h>
#include<conio.h>

int main()
{
    int num1,num2;
    int *a,*b,*temp;

    printf("Enter 1st number :: ");
    scanf("%d",&num1);
    printf("\nEnter 2nd number :: ");
    scanf("%d",&num2);

    a=&num1;
    b=&num2;

    printf("\nBefore Swapping ::\n\n\ta = %d\tb = %d\n",*a,*b);

    temp=a;
    a=b;
    b=temp;

    printf("\nAfter Swapping ::\n\n\ta = %d\tb = %d\n",*a,*b);

    return 0;
}