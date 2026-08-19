/* Source: https://www.codezclub.com/c-display-array-elements-using-pointers/ */
/*  C Program to display array with addresses using pointers  */

#include<stdio.h>
#include<stdlib.h>
#define size 10
 
int main() 
{
   int arr[3] = { 11, 22, 33 };
 
   printf("\n arr[0] ,value=%d : address=%u", arr[0], &arr[0]);
   printf("\n arr[1] ,value=%d : address=%u", arr[1], &arr[1]);
   printf("\n arr[2] ,value=%d : address=%u", arr[2], &arr[2]);
 
   return (0);
}