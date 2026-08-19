/* Source: https://www.codezclub.com/c-convert-number-to-string/ */
/* C Program to convert number to string */


#include<stdio.h>
void f(long int n, char str[]);
int main()
{
        long int num;
        printf("Enter any number to convert to String :: ");
        scanf("%ld",&num);
        char str[30];
        f(num, str);
        printf("\nAfter Converting Number to String :: ");
        puts(str);

    printf("\nEnter another number to convert to String :: ");
        scanf("%ld",&num);
        f(num, str);
        printf("\nAfter Converting 2nd Number to String :: ");
        puts(str);
}

void f(long int n, char s[])
{
        static int i=0;
        if(n==0)
        {
                i=0; /*If value of i is not made zero here, then fn will not work
                        correctly if called more than once in the main() */

       return;
        }
        f(n/10, s);
        s[i++] = n%10  + '0';
        s[i]='\0';
}