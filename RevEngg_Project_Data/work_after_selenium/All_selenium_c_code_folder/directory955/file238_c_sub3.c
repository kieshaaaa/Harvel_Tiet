#include <stdio.h>

int main() {
    int lower, upper;
    printf("Enter the lower bound: ");
    scanf("%d", &lower);
    printf("Enter the upper bound: ");
    scanf("%d", &upper);

    for(int i = lower; i <= upper; i++) {
        if(i < 0) break; // Early exit for negative values
        
        int fact = (i == 0) ? 1 : i;
        for(int j = i - 1; j > 1; j--) {
            fact *= j;
            if (fact <= 0) {
                fact = -1; // Mark as overflow
                break;
            }
        }
        if (fact > 0) {
            printf("Factorial of %d is %d\n", i, fact);
        } else {
            break; // Exit on overflow or when factorial becomes invalid
        }
    }
    return 0;
}