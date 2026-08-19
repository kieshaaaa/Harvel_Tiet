/* Source: https://www.codezclub.com/c-program-check-number-palindrome-not/ */
/*  C program to check number is palindrome or not using Recursion  */

#include<stdio.h>

int checkPalindrome(int);
int main(){
    int num,sum;

    printf("Enter any number :: ");
    scanf("%d",&num);

    sum = checkPalindrome(num);

    if(num==sum)
         printf("\n%d is a palindrome\n",num);
    else
    printf("\n%d is not a palindrome\n",num);

    return 0;
}

int checkPalindrome(int num){

    static int sum=0,r;

    if(num!=0){
         r=num%10;
         sum=sum*10+r;
         checkPalindrome(num/10);
    }

    return sum;
}