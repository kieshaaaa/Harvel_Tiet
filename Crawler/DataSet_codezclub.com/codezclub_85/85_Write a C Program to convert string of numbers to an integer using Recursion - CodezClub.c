/* Source: https://www.codezclub.com/c-convert-string-to-number/ */
/*  C Program to convert string to number */

#include<stdio.h>
#include<ctype.h>
void f(char *s, int *num);
int main()
{
        char str[10];
        int num;
        printf("Enter any string of numbers :");
        gets(str);
        num=0;
        f(str, &num);
        printf("\nAfter Converting String [ \" %s \" ] to Number = %d \n",str,num);

        printf("\nEnter any string of numbers :");
        gets(str);
        num=0;
        f(str, &num);
        printf("\nAfter Converting String [ \" %s \" ] to Number = %d \n",str,num);

        return 0;

}

void f(char *s, int *pnum)
{
    if(*s=='\0' || !isdigit(*s))
        return;
        *pnum = (*pnum)*10 + *s-'0';
    return f(s+1, pnum);
}