/* Source: https://www.codezclub.com/c-check-whether-number-perfect-number-or-not/ */
/*  C program to Check whether a Number is Perfect Number or not  */

#include <stdio.h>

int main()
{
    int num,loop;
    int sum;

    printf("\nEnter any number :: ");
    scanf("%d",&num);


    sum=0;

    for(loop=1; loop<num;loop++)
    {
        if(num%loop==0)
            sum+=loop;
    }

    if(sum==num)
        printf("\nThe Entered Number [ %d ] is a Perfect Number.\n",num);
    else
        printf("\nThe Entered Number [ %d ] is not a Perfect Number.\n",num);

    return 0;
}