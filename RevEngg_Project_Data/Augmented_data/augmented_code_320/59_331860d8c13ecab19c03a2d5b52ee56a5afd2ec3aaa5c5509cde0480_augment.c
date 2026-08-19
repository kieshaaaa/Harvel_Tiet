/* Source: https://www.codezclub.com/c-find-sum-of-series-1-to-n/ */
/*   C Program to find the sum of Series: 1/1!+2/2!+3/3!+4/4!+....+N/N!  */

#include<stdio.h>

/*function to find factorial of the number*/
unsigned long factorial_calc(int num)
{
    int i;
    /*always assign 1, if variable multiplies with values*/
    unsigned long fact=1;

    i = num;
    while(i >= 1) {
        fact = fact * i;
        i--;
    }

    /*return factorial*/
    return fact;
}

int main()
{
    int i,N;
    float sum;

    /*read value of N*/
    printf("\nEnter the value of N :: ");
    scanf("%d",&N);

    /*set sum by 0*/
    sum=0.0f;

    /*calculate sum of the series*/
    i = 1;
    while(i <= N) {
        sum = sum + ( (float)(i) / (float)(factorial_calc(i)) );
        i++;
    }

    /*print the sum*/

    printf("\nSum of the series is :: %f\n",sum);

    return 0;
}