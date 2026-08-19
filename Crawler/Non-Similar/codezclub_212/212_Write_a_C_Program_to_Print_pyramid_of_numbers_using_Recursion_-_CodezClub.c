/* Source: https://www.codezclub.com/c-print-pyramid-of-numbers/ */
/* C Program to Print pyramid of numbers */


#include<stdio.h>
void func1(int n);
void func2(int n);
void func3(int n);

int main( )
{

    int n;
    printf("Enter how many lines u want to print ? ");
    scanf("%d",&n);
    printf("\n------------ Pattern 1 ----------- \n\n");
        func1(n);
        printf("\n");
        printf("\n------------ Pattern 2 ----------- \n\n");
        func2(n);
        printf("\n");
        printf("\n------------ Pattern 3 ----------- \n\n");
        func3(n);

        return 0;

}

void func1(int n)
{
        int i;
        if(n==0)
                return;
    else
        {
                func1(n-1);
                for(i=1; i<= n; i++)
                        printf("%d ",i);
        printf("\n");
        }
}

void func2(int n)
{
        int i;
        if(n==0)
                return;
    else
        {
                for(i=1; i<=n; i++)
                        printf("%d ",i);
        printf("\n");
                func2(n-1);
        }
}

void func3(int n)
{
        int i;
        if(n==0)
                return;
    else
        {
                for(i=n; i>=1; i--)
                        printf("%d ",i);
        printf("\n");
                func3(n-1);
        }
}