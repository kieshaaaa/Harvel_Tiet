/* Source: https://www.includehelp.com/c-programs/c-program-to-print-all-upper-case-and-lower-case-alphabets.aspx */
/*C program to print all upper case and lower case alphabets.*/
 
#include <stdio.h>
 
int main()
{
    char i;
 
    printf("Capital (upper) case characters:\n");
    for(i='A'; i<='Z'; i++)
        printf("%c ",i);
 
    printf("\n\nLower case characters:\n");
    for(i='a'; i<='z'; i++)
        printf("%c ",i);
     
    return 0;
}
