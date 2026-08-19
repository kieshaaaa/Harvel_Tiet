// Write a C program to check the given number is Armstrong number or not. 

#include<stdio.h>
int main()
{
    int num, rem, originalNum, sum=0;
    
    printf("Enter a Number: ");
    scanf("%d", &num);
    
    originalNum = num;
    
    for(;num!=0;){
        rem = num % 10;
        sum = sum + (rem * rem * rem);
        num = num / 10;
    }
    
    if(originalNum == sum)
    {
        printf("This is an Armstrong number\n");
    }
    else{
        printf("This is not an Armstrong number \n");
    }
}