/*Write a C program to get full name as input from the user. Identify the vowels in the full name and change it to uppercase.*/
#include<stdio.h>
int main()
{
    char fullName[100];
    int index;
    
    printf("Enter your Name: ");
    gets(fullName);
    
    printf("The original string is: ");
    puts(fullName);
    
    index = 0;
    
    for(; fullName[index]!='\0'; index++)
    {
        if(fullName[index]=='a' || fullName[index]=='e' || fullName[index]=='i' || fullName[index]=='o' || fullName[index]=='u')
            fullName[index]=fullName[index]-32;
    }
    
    printf("After Converting vowels into uppercase: \n");
    puts(fullName);
}