/* Source: https://www.includehelp.com/c-programs/c-program-to-count-digits-spaces-special-characters-alphabets-in-a-string.aspx */
/*C program to count digits, spaces, special characters, 
alphabets in a string.*/

#include <stdio.h>

int main()
{
    char inputString[100];
    int digitCount, alphabetCount, specialCharCount, spaceCount;
    int i = 0;

    //assign all counters to zero
    digitCount = alphabetCount = specialCharCount = spaceCount = 0;

    printf("Enter a string: ");
    gets(inputString);

    while (inputString[i] != '\0') {

        if (inputString[i] >= '0' && inputString[i] <= '9')
            digitCount++;
        else if ((inputString[i] >= 'A' && inputString[i] <= 'Z') || (inputString[i] >= 'a' && inputString[i] <= 'z'))
            alphabetCount++;
        else if (inputString[i] == ' ')
            spaceCount++;
        else
            specialCharCount++;
        i++;
    }

    printf("\nDigits: %d \nAlphabets: %d \nSpaces: %d \nSpecial Characters: %d", digitCount, alphabetCount, spaceCount, specialCharCount);

    return 0;
}