/* Source: https://www.includehelp.com/c-programs/c-program-to-count-upper-and-lower-case-characters-in-a-string.aspx */
/*C program to count uppercase and lowercase 
characters in a string.*/

#include <stdio.h>

int main()
{
    char inputString[100];
    int lowerCaseCount, upperCaseCount;
    int index;

    //assign all counters to zero
    lowerCaseCount = upperCaseCount = 0;

    printf("Enter a string: ");
    gets(inputString);

    index = 0;
    while (inputString[index] != '\0') {

        if (inputString[index] >= 'A' && inputString[index] <= 'Z')
            upperCaseCount++;
        else if (inputString[index] >= 'a' && inputString[index] <= 'z')
            lowerCaseCount++;
        index++;
    }

    printf("Total Upper case characters: %d, Lower Case characters: %d", upperCaseCount, lowerCaseCount);

    return 0;
}