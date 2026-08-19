/* Source: https://www.includehelp.com/c-programs/print-gender-using-switch.aspx */
/*C program to read gender (M/F) and print corresponding gender using switch.*/
 
#include <stdio.h>
 
int main()
{
    char gender;
     
    printf("Enter gender (M/m or F/f): ");
    scanf("%c",&gender);
     
    switch(gender)
    {
        case 'M':
        case 'm':
            printf("Male.");
            break;
        case 'F':
        case 'f':
            printf("Female.");
            break;
        default:
            printf("Unspecified Gender.");
    }
    printf("\n");
    return 0;
}
