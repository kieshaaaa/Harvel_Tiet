/* Source: https://www.codezclub.com/c-toggle-each-character-in-string/ */
/*  C program to Toggle each characters in a string  */

#include <stdio.h>

int main()
{
    char    str[100];
    int     counter;

    printf("\nEnter a string: ");
    gets(str);

    // toggle each string characters
    for(counter=0;str[counter]!=NULL;counter++)
    {
        if(str[counter]>='A' && str[counter]<='Z')
            str[counter]=str[counter]+32;   //convert into lower case
        else if(str[counter]>='a' && str[counter]<='z')
            str[counter]=str[counter]-32;   //convert into upper case
    }

    printf("\nString after toggle each characters: [ %s ]\n",str);
    return 0;
}