/* Source: https://www.codezclub.com/c-find-sum-of-series-upto-n-terms/ */
/*  C program to find sum of series: 1+1/2+1/3+1/4+1/5+.....+1/N  */

#include<stdio.h>

int main()
{
    int i, n;
    float sum;

    /*read value of N*/
    printf("\nEnter the value of N :: ");
    scanf("%d",&n);

    /*set sum by 0*/
    sum=0.0f;

    /*calculate sum of the series*/
    i = 1;
    while(i <= n){
        sum = sum + ((float)1/(float)i);
        i++;
    }

    /*print the sum*/

    printf("\nSum of the series is :: %f\n",sum);

    return 0;
}