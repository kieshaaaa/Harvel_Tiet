#include <stdio.h>

int main() {
    int num, j;
    int fact = 1;

    printf("Enter an integer: ");
    scanf("%d", &num);

    // Make sure the input is a positive number
    if (num < 0) {
        printf("Error! Factorial of a negative number doesn't exist.\n");
    } else {
        j = 1;
        while (j <= num) {
            fact = fact * j; 
            j++;
        }
        printf("Factorial of %d = %d \n", num, fact);
    }

    return 0;
}