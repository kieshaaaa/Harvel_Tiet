/* Source: https://www.codezclub.com/c-toggle-each-character-in-string/ */
/*  C program to Toggle each characters in a string  */

#include <stdio.h>

int main()
{
    char    inputString[100];
    int     index = 0;

    printf("\nEnter a string: ");
    gets(inputString);

    // toggle each string characters
    while(inputString[index] != '\0')
    {
        if(inputString[index]>='A' && inputString[index]<='Z')
            inputString[index]=inputString[index]+32;   //convert into lower case
        else if(inputString[index]>='a' && inputString[index]<='z')
            inputString[index]=inputString[index]-32;   //convert into upper case
        index++;
    }

    printf("\nString after toggle each characters: [ %s ]\n",inputString);
    return 0;
}