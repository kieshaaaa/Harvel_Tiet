/* Source: https://www.codezclub.com/c-find-prime-numbers-below-given-number/ */
/* C Program to Find all Prime Numbers less than N  */

#include<stdio.h>

int main()
{
    int i, isPrime, limit, num;

    printf("\nEnter Limit(N) upto which u want :: ");
    scanf("%d", &limit);
    printf("\nPRIME NUMBERS less than [ %d ] are :: \n\n",limit);

    num = 1;
    while(num < limit)
    {
        isPrime = 1;
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
            printf(" %d ",num);
        num++;
    }

    printf("\n");
    return 0;
}