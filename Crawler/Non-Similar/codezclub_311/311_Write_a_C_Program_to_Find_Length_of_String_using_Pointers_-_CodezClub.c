/* Source: https://www.codezclub.com/c-find-length-string-using-pointer/ */
/*  C Program to Find Length of String using Pointers  */

#include<stdio.h>
#include<conio.h>

int string_ln(char*);

int main()
{
   char str[20];
   int length;

   printf("Enter any string :: ");
   scanf("%s",str);

   length = string_ln(str);
   printf("\nThe length of the given string [ %s ] is : %d\n", str, length);

  return 0;
}

int string_ln(char*p) /* p=&str[0] */
{
   int count = 0;
   while (*p != '\0') {
      count++;
      p++;
   }
   return count;
}