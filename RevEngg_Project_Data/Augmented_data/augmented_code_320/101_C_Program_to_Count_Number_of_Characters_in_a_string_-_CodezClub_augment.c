/* Source: https://www.codezclub.com/c-counting-number-of-characters-in-string/ */
/*  &nbsp;C Program to Count Number of Characters in a string  */

#include <stdio.h>
int main() {
    char inputString[20];
    int stringLength = 0;
    printf("\nEnter the string: ");
    gets(inputString);
    for ( ; inputString[stringLength] != '\0'; stringLength++);
    printf("\nLength of [ %s ] is [ %d ]\n", inputString, stringLength);
    return 0;
}