/* Source: https://www.codezclub.com/c-display-array-elements-using-pointers/ */
/*  C Program to display array with addresses using pointers  */

#include<stdio.h>
#include<stdlib.h>
#define size 10
 
int main() 
{
   int a[3] = { 11, 22, 33 };
 
   printf("\n a[0] ,value=%d : address=%u", a[0], &a[0]);
   printf("\n a[1] ,value=%d : address=%u", a[1], &a[1]);
   printf("\n a[2] ,value=%d : address=%u", a[2], &a[2]);
 
   return (0);
}