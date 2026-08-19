/* Source: https://www.codezclub.com/c-raise-float-to-power-integer/ */
/* Program to raise float to power integer*/

#include<stdio.h>
float power(float a , int n);
float Ipower(float a , int n);
int main( )
{
        float a, p;
        int n;
        printf("Enter base : ");
        scanf("%f", &a);
        printf("Enter power : ");
        scanf("%d", &n);
        p = power(a, n);

        printf("\nUsing Recursion ::\n ");
        printf("%f raised to power %d is %.2f\n", a, n, p);
        p = Ipower(a, n);
        printf("\nUsing Iteration ::\n ");
        printf("%f raised to power %d is %.2f\n", a, n, p);

        return 0;

}/*End of main()*/

/*Recursive*/
float power(float a , int n)
{
        if(n == 0)
                return(1);
        else
                return(a * power(a,n-1));
}/*End of power()*/

/*Iterative*/
float Ipower(float a , int n)
{
        int i;
        float result=1;
        for(i=1; i<=n; i++)
                result = result * a;
        return result;
}/*End of Ipower()*/