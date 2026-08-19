/* Source: https://www.includehelp.com/c-programs/swap-two-string-using-user-define-function.aspx */
/** C program to swap two strings using 
 * a user defined function
 */

#include <stdio.h>

// function to swap two strings
void swapstr(char *str1 , char *str2)
{
    char temp;
    int i=0;
    
    for(i=0 ; i<strlen(str1); i++)
    {
        temp = str1[i];
        str1[i] = str2[i];
        str2[i] = temp;
    }
}

// main function
int main()
{
    //Define two char buffers with different strings
    char string1[10]="Hello";
    char string2[10]="World";
    
    swapstr(string1, string2);
    
    printf("\nThe strings are swapping are..\n");
    printf("\nString 1 : %s",string1);
    printf("\nString 2 : %s",string2);

    return 0;
}
