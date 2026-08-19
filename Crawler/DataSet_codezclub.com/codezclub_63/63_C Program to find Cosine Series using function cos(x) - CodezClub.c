/* Source: https://www.codezclub.com/c-evaluate-cosine-series-cosx/ */
/*  C Program to find Cosine Series using function cos(x)  */

#include<stdio.h>
#include<math.h>

int factorial(int n)
{
        int i,fact=1;
        for(i=1;i<=n;i++)
                fact=fact*i;
        return fact;
}


int main()
{
        double x, cosx=1, z, term;
    int j, n, i,sign=1;

        printf("\nEnter the value for x : ") ;  //Example 45 180 90 360
        scanf("%lf", &x) ;
        printf("\nEnter the value for n : ") ;   //Example 10 20
        scanf("%d", &n) ;

        x = x * 3.14159 / 180 ;   //converting degree to radian
    i=0;
    z=cos(x);

        for(i=2;i<=n;i=i+2)
    {
        sign=-sign;
                term=sign*pow(x,i)/factorial(i);
        cosx=cosx+term;
    }

        printf("\ncos(x) is approximately %.15lf\n", cosx);
    printf("\ncos(x) by default function is %.15lf\n", z);

    return 0;
}