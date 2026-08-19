/* Source: https://www.includehelp.com/c-programs/c-program-to-convert-number-from-decimal-to-binary.aspx */
/*C program to convert number from decimal to binary*/
 
#include <stdio.h>
 
int main()
{
    int     decimal, index, i;
    int     binary[32];
 
    printf("Enter decimal number: ");
    scanf("%d",&decimal);
 
    index = 0;              /*initialize index to zero*/
    for( ;decimal > 0;){
        binary[index] = decimal % 2;
        decimal = decimal / 2;
        index++;
    }
 
    /*print value in reverse order*/
    printf("Binary value is: ");
    for(i = (index - 1); i >= 0; i--)
        printf("%d", binary[i]);
 
    return 0;
}