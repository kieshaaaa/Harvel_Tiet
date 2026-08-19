// Write a C program to print the multiplication table of a number. Get the number and range from the user. 

#include<stdio.h>
int main()
{
    int num, i, r;
    
    printf("Enter an integer number: ");
    scanf("%d", &num);
    
    printf("Enter the range: ");
    scanf("%d", &r);
    
    i = 1;
    while(i <= r)
    {
        printf("%d * %d = %d \n", num, i, num * i);
        i++;
    }
    return 0;
}