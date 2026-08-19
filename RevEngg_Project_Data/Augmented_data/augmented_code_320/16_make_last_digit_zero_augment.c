// C program to convert last Digit of a Number into Zero => Digit = 245 Make it => 240.
// 👉 Output => Result After Converting Last Digit of 245 into 0 => 245

// Header Files
#include <stdio.h>

// Main Function Start
int main()
{
    int number, outcome;
    printf("\nEnter An Integer => ");
    scanf("%d", &number);

    // 1st Approach
    outcome = number / 10 * 10;

    // 2nd Approach
    // outcome = number - number % 10;

    printf("\nResult After Converting Last Digit of %d into 0 => %d", number, outcome);

    return 0;
}
// Main Function End