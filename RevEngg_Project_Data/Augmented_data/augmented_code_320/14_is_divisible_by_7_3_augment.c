// C program to check whether a given number is divisible by 7 or divisible by 3

// Header Files
#include <stdio.h>


// Main Function Start
int main()
{
    int number;
    printf("\nEnter a number to check whether a given number is divisible by 7 or divisible by 3 => ");
    scanf("%d", &number);

    // 1st Approach
    if (number % 7 == 0 || number % 3 == 0)
        printf(" %d is divisible by 7 or divisible by 3", number);
    else
        printf("\n%d is not divisible by 7 or divisible by 3", number);

    // 2nd Approach
    if (number % 3 && number % 2)
        printf("\n%d is not divisible by 7 anor divisible by 3", number);
    else
        printf("\n%d is divisible by 7 or divisible by 3", number);

    printf("\n");
  
    return 0;
}
// Main Function End