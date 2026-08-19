/* Source: https://www.codezclub.com/c-arrange-string-in-alphabetical-order/ */
/*  C Program to Sort a String in Alphabetical order  */

#include<stdio.h>
#include<conio.h>
#include<string.h>

int main()
  {
     char str[10],temp;
     int i,j;

     printf("\nEnter the string : ");
     scanf("%s",str);
     for(i=0;i<strlen(str);i++)
       for(j=0;j<strlen(str);j++)
         if(str[i]<str[j])
         {
           temp = str[i];
           str[i] = str[j];
           str[j] = temp;
         }
     printf("\nReversed String is : [ %s ]\n",str);

     return 0;
  }