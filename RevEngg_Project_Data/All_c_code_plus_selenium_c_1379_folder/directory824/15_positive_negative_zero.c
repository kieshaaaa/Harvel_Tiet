// // C program to check whether a given number is positive, negative or zero

// // Header Files
#include <stdio.h>


// // Main Function Start
int main()
{
    int num,result;
    printf("\nEnter a number => ");
    scanf("%d", &num);

    if (num > 0)
    {
        result = 1;
        printf("\n%d is Positive", result);
    }
    else if (num)
    {
        result = -1;
        printf("\n%d is Negative", result);
    }
    else
    {
        result = 0;
        printf("\nEntered Number is 0", result);
    }
    printf("\n");

    return 0;
}
// // Main Function End
