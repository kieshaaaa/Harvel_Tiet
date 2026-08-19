/* Source: https://www.codezclub.com/c-check-whether-number-perfect-number-or-not/ */
/*  C program to Check whether a Number is Perfect Number or not  */

#include <stdio.h>

int main()
{
    int number, i;
    int sum;

    printf("\nEnter any number :: ");
    scanf("%d",&number);


    sum=0;
    i = 1;
    while(i < number)
    {
        if(number % i == 0)
            sum += i;
        i++;
    }

    if(sum==number)
        printf("\nThe Entered Number [ %d ] is a Perfect Number.\n",number);
    else
        printf("\nThe Entered Number [ %d ] is not a Perfect Number.\n",number);

    return 0;
}