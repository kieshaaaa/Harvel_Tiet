/* Source: https://www.codezclub.com/c-find-sum-of-series-n-terms/ */
/*  C Program to find sum of series : 1 + 3^2/3^3 + 5^2/5^3 + 7^2/7^3 + ... till N terms  */

#include<stdio.h>
#include<math.h>

int main()
{
    int i, numTerms;
    float sum;
    int counter;


    /*read value of N*/
    printf("\nEnter total number of terms :: ");
    scanf("%d",&numTerms);

    /*set sum by 0*/
    sum=0.0f;

    /*calculate sum of the series*/
    counter=1;
    i = 1;
    while(i <= numTerms)
    {
        sum = sum +  ( (float)(pow(counter,2)) / (float)(pow(counter,3)) );
        counter+=2;
        i++;
    }

    /*print the sum*/

    printf("\nSum of the series is :: %f\n",sum);

    return 0;
}