/* Source: https://www.codezclub.com/c-concatenate-two-strings-without-using-functions/ */
/*  C Program to Concatenate Two Strings without using strcat() Function  */

#include<stdio.h>
int main()
{
    int i=0,j=0;
    char str1[20],str2[20];

    printf("\nEnter first string :: ");
    gets(str1);
    printf("\nEnter second string :: ");
    gets(str2);

    printf("\nBefore Concatenation, Strings are :: \n\n");
    puts(str1);
    puts(str2);

    while(str1[i]!='\0')
    {
        i++;
    }

    while(str2[j]!='\0')
    {
        str1[i++]=str2[j++];
    }

    str1[i]='\0';

    printf("\nAfter Concatenation, Strings are :: \n\n");
    puts(str1);

    return 0;
}