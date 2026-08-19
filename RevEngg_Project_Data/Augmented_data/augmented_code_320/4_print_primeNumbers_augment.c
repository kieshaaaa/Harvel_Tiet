//Write a C program to print the prime numbers between the given range

#include<stdio.h>
#include<stdlib.h>
void main()
{
    int num1, num2, flag, temp, count=0, i, j;
    
    printf("Enter the value of Number1 and Number2: ");
    scanf("%d %d", &num1, &num2);
    
    if(num2<2)
    {
        printf("There are no primes upto %d \n", num2);
    }
    printf("Prime Numbers are...\n");
    temp = num1;
    
    if(num1 % 2 == 0)
    {
        num1++;
    }
    i = num1;
    while(i<=num2)
    {
        flag = 0;
        j=2;
        while(j<=i/2)
        {
            if((i%j)==0)
            {
                flag = 1;
                break;
            }
            j++;
        }
        if(flag == 0)
        {
            printf("%d \n", i);
            count++;
        }
        i=i+2;
    }
    printf("Number of primes between %d & %d = %d \n", temp, num2, count);
}