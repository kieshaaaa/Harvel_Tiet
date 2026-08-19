 // C program to print a Number without its Last Digit

// // Header Files
#include <stdio.h>


// // Main Function Start
int main()
{
    int num;
    int result;
    printf("\nEnter An Integer => ");
    scanf("%d", &num);
    result = num / 10;
    printf(" Without last Digit => %d \n", result);


    return 0;
}
// // Main Function End

