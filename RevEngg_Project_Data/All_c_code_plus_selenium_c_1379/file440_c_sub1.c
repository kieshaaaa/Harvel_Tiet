#include <stdio.h>

int main() {
    int n;
    float sum;  // Using float as per the instructions

    printf("Enter the value of N: ");
    scanf("%d", &n);

    // Arithmetic series formula to calculate the sum
    sum = (n / 2.0) * (1 + n); 

    printf("Sum is: %.0f\n", sum);  // Ensuring the output is treated as an integer

    return 0;
}