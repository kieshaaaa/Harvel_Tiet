/* Source: https://www.codezclub.com/c-find-frequency-of-characters/ */
/*  C Program to find Frequency of characters in a String  */

#include<stdio.h>
#include<conio.h>

 void main()
 {
   int i,count=0;
   char ch[20],c;
   clrscr();
   printf("Enter Any String: ");
   gets(ch);
   printf("Enter any Character form string: ");
   scanf("%c",&c);
   for(i=0;ch[i]!='\0';i++)
   {
   if(ch[i]==c)
   count++;
   }
   if(count==0)
   {
   printf("Given character not found");
   }
   else
   {
   printf("Repetition of %c is %d times",c,count);
   }
   getch();
 }