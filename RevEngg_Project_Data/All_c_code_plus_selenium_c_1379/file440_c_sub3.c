#include <stdio.h>

int main() {
    int n, i = 1;
    float sum = 0;  // Using float as per the instructions

    printf("Enter the value of N: ");
    scanf("%d", &n);

    // Using a do-while loop
    do {
        sum += i;
        i++;
    } while (i <= n);

    printf("Sum is: %.0f\n", sum);  // Ensuring the output is treated as an integer

    return 0;
}