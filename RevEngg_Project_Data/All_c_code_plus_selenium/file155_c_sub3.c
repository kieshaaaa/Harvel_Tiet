#include <stdio.h>

int main() {
    float x;
    float result = 1.0; // Initialize result to 1 for the series sum
    float term = 1.0; // First term of the series
    int n = 20; // Number of terms to include for approximation

    printf("Enter the value of x: ");
    scanf("%f", &x);

    for(int i = 1; i <= n; i++) {
        term *= x / i; // Calculate each term
        result += term; // Add each term to the result
    }

    printf("%f e^x = %f\n", x, result);
    return 0;
}