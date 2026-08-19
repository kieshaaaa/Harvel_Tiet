/* Source: https://www.includehelp.com/c-programs/split-the-string-using-the-strtok-function.aspx */
// C program to split string 
// using strtok() function

#include <stdio.h>
#include <string.h>

int main()
{
    char str[32] = "www.includehelp.com";
    char* word;
    char delim[2] = ".";

    //Get first word from string.
    word = strtok(str, delim);

    while (word != NULL) {
        printf("%s\n", word);
        word = strtok(NULL, delim);
    }

    return 0;
}
