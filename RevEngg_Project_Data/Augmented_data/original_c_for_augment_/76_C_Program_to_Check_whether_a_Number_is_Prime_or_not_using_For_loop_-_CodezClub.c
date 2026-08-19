/* Source: https://www.codezclub.com/c-check-prime-number/ */
/*  C Program to Check whether a Number is Prime or not using For loop  */

#include<stdio.h>

int main()
{
    int i, prime = 1, n;
    printf("\nENTER ANY NUMBER :: ");
    scanf("%d", &n);

    for(i=2; i<n; i++)
    {
        if(n%i == 0)
        {
            prime = 0;
            break;
        }
    }

    if(prime)
        printf("\nTHE NUMBER [ %d ] IS A PRIME NUMBER.\n", n);
    else
        printf("\nTHE NUMBER [ %d ] IS NOT A PRIME NUMBER.\n", n);

    return 0;
}