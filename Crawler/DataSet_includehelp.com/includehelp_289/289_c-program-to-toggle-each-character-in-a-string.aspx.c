/* Source: https://www.includehelp.com/c-programs/c-program-to-toggle-each-character-in-a-string.aspx */
/*C program to toggle each character in a string.*/

#include <stdio.h>

int main()
{
    char str[100];
    int counter;

    printf("Enter a string: ");
    gets(str);

    // toggle each string characters
    for (counter = 0; str[counter] != NULL; counter++) {
        if (str[counter] >= 'A' && str[counter] <= 'Z')
            str[counter] = str[counter] + 32; //convert into lower case
        else if (str[counter] >= 'a' && str[counter] <= 'z')
            str[counter] = str[counter] - 32; //convert into upper case
    }

    printf("String after toggle each characters: %s", str);
 
    return 0;
}
