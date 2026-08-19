/* Source: https://www.codezclub.com/c-access-elements-array-using-pointer/ */
/*  C Program to Access elements of an array using pointer  */

#include <stdio.h>

int main()
{
   int data[5], i;
   printf("Enter 5 elements below :: \n");

   for(i = 0; i < 5; ++i)
   {
       printf("\nEnter %d element :: ",i+1);
       scanf("%d", data + i);

   }

   printf("\nNumbers Entered are :: \n");
   for(i = 0; i < 5; ++i)
   {

       printf("\nElement %d = %d\n",i+1,*(data + i));

   }


   return 0;
}