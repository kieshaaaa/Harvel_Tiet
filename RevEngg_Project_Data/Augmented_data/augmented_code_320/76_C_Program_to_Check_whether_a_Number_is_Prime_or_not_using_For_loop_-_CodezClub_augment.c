/* Source: https://www.codezclub.com/c-check-prime-number/ */
/*  C Program to Check whether a Number is Prime or not using While loop  */

#include<stdio.h>

int main()
{
    int i, isPrime = 1, num;
    printf("\nENTER ANY NUMBER :: ");
    scanf("%d", &num);

    i = 2;
    while(i < num)
    {
        if(num % i == 0)
        {
            isPrime = 0;
            break;
        }
        i++;
    }

    if(isPrime)
        printf("\nTHE NUMBER [ %d ] IS A PRIME NUMBER.\n", num);
    else
        printf("\nTHE NUMBER [ %d ] IS NOT A PRIME NUMBER.\n", num);

    return 0;
}