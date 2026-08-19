/* Source: https://www.codezclub.com/c-accept-numbers-display-in-reverse-order/ */
/* C Program to Print Natural Numbers in Reverse order  */

#include <stdio.h>

int main()
{
    int i, n;

    printf("\nEnter value of n :: ");
    scanf("%d", &n);

    printf("\nNatural Numbers in Reverse Order Upto [ %d ] :: \n",n);

    for(i=n; i>=1; i--)
    {
        printf("\t%d\n", i);
    }

    return 0;
}