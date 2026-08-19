/* Source: https://www.codezclub.com/c-reverse-any-string/ */
/*  C Program to Reverse a String without using inbuilt function  */

#include<stdio.h>
#include<string.h>

int main()
{
     char str[100],str1[100],temp;
     int i,j=0;

     printf("\nEnter any string :: ");
     gets(str);

     strcpy(str1,str);

     i=0;
     j=strlen(str)-1;

    while(i<j)
    {
       temp=str[i];
       str[i]=str[j];
       str[j]=temp;
       i++;
       j--;
    }

     printf("\nReverse of String [ %s ] is :: [ %s ]\n",str1,str);

     return 0;
}