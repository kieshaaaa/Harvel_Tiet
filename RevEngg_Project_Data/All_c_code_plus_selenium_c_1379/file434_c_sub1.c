#include <stdio.h>
#include <math.h>

int main() {
    int n, i;
    float arr[100]; // Assuming the array can hold up to 100 elements
    float sum = 0, mean, variance = 0, sumOfSquares = 0, stdDeviation;

    printf("Enter the number of elements: ");
    scanf("%d", &n);

    for(i = 0; i < n; i++) {
        printf("Enter number %d: ", i + 1);
        scanf("%f", &arr[i]);
        sum += arr[i];
    }

    mean = sum / n;

    for(i = 0; i < n; i++) {
        sumOfSquares += (arr[i] - mean) * (arr[i] - mean);
    }

    variance = sumOfSquares / n;
    stdDeviation = sqrtf(variance);

    printf("Mean = ");
    printf("%.2f\n", mean);
    printf("Variance = ");
    printf("%.2f\n", variance);
    printf("Standard Deviation = ");
    printf("%.2f\n", stdDeviation);

    return 0;
}