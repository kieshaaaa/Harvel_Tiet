/* Source: https://www.codezclub.com/c-remove-all-characters-in-string-except-alphabet/ */
/*  C Program to Remove or Delete Characters in a String Except Alphabet  */

#include<stdio.h>

int main()
{
    char line[150];
    int i, j;
    printf("\nEnter a string: ");
    gets(line);

    for(i = 0; line[i] != '\0'; ++i)
    {
        while (!( (line[i] >= 'a' && line[i] <= 'z') || (line[i] >= 'A' && line[i] <= 'Z') || line[i] == '\0') )
        {
            for(j = i; line[j] != '\0'; ++j)
            {
                line[j] = line[j+1];
            }
            line[j] = '\0';
        }
    }
    printf("\nOutput String :: ");
    puts(line);
    printf("\n");
    return 0;
}