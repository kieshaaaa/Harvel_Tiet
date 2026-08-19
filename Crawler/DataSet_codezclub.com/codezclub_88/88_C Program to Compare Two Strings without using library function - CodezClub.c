/* Source: https://www.codezclub.com/c-compare-two-strings/ */
/*  C Program to Compare Two Strings without using library function  */

#include<stdio.h>
int main()
{

    char str1[20],str2[20],i,j,flag=0;

    printf("\nEnter first string :: ");
    gets(str1);
    printf("\nEnter Second string :: ");
    gets(str2);

    i=0;
    j=0;

    while(str1[i]!='\0')
    {
       i++;
    }

    while(str2[j]!='\0')
    {
       j++;
    }

    if(i!=j)
    {
        flag=0;
    }
    else
    {
         for(i=0,j=0;str1[i]!='\0',str2[j]!='\0';i++,j++)
         {
             if(str1[i]==str2[j])
             {
                flag=1;
             }
         }
    }

    if(flag==0)
    {
        printf("\nStrings are not equal\n");
    }
    else
    {
        printf("\nStrings are equal.\n");
    }

     return 0;

 }