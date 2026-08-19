/* Source: https://www.codezclub.com/c-swap-numbers-using-call-reference/ */
/*  C Program to Swap Two Numbers Using Call by Reference  */

#include<stdio.h>

void cyclicSwap(int *a,int *b,int *c);

int main()
{
    int a, b, c;

    printf("Enter a :: ");
    scanf("%d",&a);
    printf("\nEnter b :: ");
    scanf("%d",&b);
    printf("\nEnter c :: ");
    scanf("%d",&c);

    printf("\nValues Before swapping :: \n");
    printf("\ta = %d\tb = %d\tc = %d\n",a,b,c);

    cyclicSwap(&a, &b, &c);

    printf("\nValues After swapping :: \n");
    printf("\ta = %d\tb = %d\tc = %d\n",a,b,c);

    return 0;
}
void cyclicSwap(int *a,int *b,int *c)
{

    int temp;

    // swapping in cyclic order
    temp = *b;
    *b = *a;
    *a = *c;
    *c = temp;
}