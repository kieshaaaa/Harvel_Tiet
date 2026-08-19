/* Source: https://www.codezclub.com/write-a-c-program-to-check-prime-or-not/ */
/* C program to Check whether the Given Number is Prime or not  */

#include <stdio.h>

int main()
{
    int i;
    int num;
    unsigned char isPrime = 0;

    printf("\nEnter any integer number :: ");
    scanf("%d",&num);

    i = 2;
    while(i < (num/2))
    {
        if(num % i == 0)
        {
            isPrime = 1;
            break;
        }
        i++;
    }

    if(isPrime == 0)
        printf("\nThe Entered Number [ %d ] is a Prime Number.\n",num);
    else
        printf("\nThe Entered Number [ %d ] is not a Prime Number.\n",num);

    return 0;
}