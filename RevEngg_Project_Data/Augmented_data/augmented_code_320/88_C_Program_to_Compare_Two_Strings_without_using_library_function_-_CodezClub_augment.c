/* Source: https://www.codezclub.com/c-compare-two-strings/ */
/*  C Program to Compare Two Strings without using library function  */

#include<stdio.h>
int main()
{

    char string1[20],string2[20];
    int index1,index2,flag=0;

    printf("\nEnter first string :: ");
    gets(string1);
    printf("\nEnter Second string :: ");
    gets(string2);

    index1=0;
    while(string1[index1]!='\0')
    {
       index1++;
    }

    index2=0;
    while(string2[index2]!='\0')
    {
       index2++;
    }

    if(index1!=index2)
    {
        flag=0;
    }
    else
    {
        int k=0;
        while(k < index1 && string1[k] == string2[k]) {
            flag=1;
            k++;
        }
        if (k < index1) flag = 0;
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