#include <stdio.h>

int main() {
    int num, a, b;
    int compositeCount = 0;
    int isComposite;

    printf("Enter a number: ");
    scanf("%d", &num);

    // Directly counting 2 as prime, all even numbers as composite
    if (num > 2) compositeCount = (num - 2) / 2;

    a = 3;
    while (a <= num) {
        isComposite = 0;
        b = 3;
        while (b * b <= a) {
            if (a % b == 0) {
                isComposite = 1;
                break;
            }
            b += 2;
        }
        if (isComposite) {
            compositeCount++; // This number is composite
        } else if (a == 2) {
            // This check is redundant given the loop starts at 3, kept for clarity
            // Prime numbers are not being counted directly in this approach
        }
        a += 2;
    }

    // Adjusting the count for 1 and 2 based on input
    compositeCount += (num >= 2) ? 1 : 0;

    printf("Number of composite numbers till %d: %d\n", num, compositeCount);
    return 0;
}