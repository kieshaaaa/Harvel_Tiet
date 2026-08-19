/* Source: https://www.codezclub.com/c-count-uppercase-lowercase-special-characters-in-string/ */
/*  C Program to Count Uppercase Lowercase Special characters in string  */

#include<stdio.h>

int main()
{
    char inputString[100];
    int i = 0;
    int lowerCount,upperCount,specialCount;

    printf("Enter any string: ");
    gets(inputString);

    //here, we are printing string using printf
    //without using loop
    printf("\nEntered string is: %s\n",inputString);

    //count lower case, upper case and special characters
    //assign 0 to counter variables
    lowerCount=upperCount=specialCount=0;

    while(inputString[i] != '\0')
    {
        //check for alphabet
        if((inputString[i]>='A' && inputString[i]<='Z') || (inputString[i]>='a' && inputString[i]<='z'))
        {
            if((inputString[i]>='A' && inputString[i]<='Z'))
            {
                //it is upper case alphabet
                upperCount++;
            }
            else
            {
                //it is lower case character
                lowerCount++;
            }
        }
        else
        {
            //character is not an alphabet
            specialCount++; //it is special character
        }
        i++;
    }

    //print values
    printf("\nUpper case characters: [ %d ]\n",upperCount);
    printf("\nLower case characters: [ %d ]\n",lowerCount);
    printf("\nSpecial characters: [ %d ]\n",specialCount);

    return 0;
}