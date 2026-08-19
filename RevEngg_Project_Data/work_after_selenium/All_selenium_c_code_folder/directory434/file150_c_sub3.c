#include <stdio.h>

int main() {
    int number;
    int shift;
    int foundOne = 0; // Flag to indicate when to start printing.

    printf("Enter decimal number: ");
    scanf("%d", &number);

    printf("Binary value is: ");

    // Loop from the highest bit to the lowest.
    for (shift = 31; shift >= 0; shift--) {
        if (number & (1 << shift)) {
            printf("1");
            foundOne = 1; // Set flag when the first '1' is encountered.
        } else if (foundOne) {
            printf("0");
        }
    }
    
    // If number is 0, nothing would have been printed yet.
    if (!foundOne) printf("0");
    printf("\n");

    return 0;
}