/*Write a C program to check the eligibility of a candidate to poll his vote. If the candidate
age is 18 and above print “Eligible to Vote” otherwise print “Not Eligible”. (Use if else
statement)*/

#include<stdio.h>
int main()
{
    int age;
    int result1;
    printf("Welcome to Indian Election Commision!!\n");
    printf("\n->Enter your Age: ");
    scanf("%d", &age);
    
    if(age > 18){
        result1 = 1;
        printf("\n You are Eligible %d for voting.\n\n",result1);
    }
    else
    {
        result1 = 0;
        printf("\nYou are not Eligible for voting because your age is %d\n\n",result1 );
     }
}
