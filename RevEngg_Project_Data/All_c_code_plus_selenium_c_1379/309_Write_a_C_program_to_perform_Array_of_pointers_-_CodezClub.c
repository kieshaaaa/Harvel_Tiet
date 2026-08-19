/* Source: https://www.codezclub.com/c-program-perform-array-pointers/ */
/*  C program to perform Array of pointers  */

#include <stdio.h>

int main()
{
    /*declare same type of variables*/
    int a,b,c;

    /*we can create an integer pointer array to
  store the address of these integer variables*/
    int *ptr[3];

    /*assign the address of all integer variables to ptr*/
    ptr[0]= &a;
    ptr[1]= &b;
    ptr[2]= &c;

    /*assign the values to a,b,c*/
    a=100;
    b=200;
    c=300;

    /*print values using pointer variable*/
    printf("\tValue of \ta: %d \tb: %d \tc: %d\n",*ptr[0],*ptr[1],*ptr[2]);

    /*add 10 to all values using pointer*/
    *ptr[0] +=10;
    *ptr[1] +=10;
    *ptr[2] +=10;
    printf("\n\tAfter adding 10\n\n");
    printf("\tValue of \ta: %d \tb: %d \tc: %d\n",*ptr[0],*ptr[1],*ptr[2]);

    return 0;
}