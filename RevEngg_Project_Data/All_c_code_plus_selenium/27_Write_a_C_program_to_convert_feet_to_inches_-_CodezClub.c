/* Source: https://www.codezclub.com/c-program-to-convert-feet-to-inches/ */
/*  C program to convert feet to inches  */

#include<stdio.h>

int main()
{
                int feet,inches;
                
                printf("Enter the value of feet: ");
                scanf("%d",&feet);
                
                //converting into inches
                inches=feet*12;
                
                printf("\nTotal inches will be: %d\n",inches);
                return 0;
}