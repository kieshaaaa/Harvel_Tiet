#include <stdio.h>
#include <math.h>

int main() {
    int n, i;
    float arr[50]; // Assuming a smaller array size for compactness
    float sum = 0, mean, variance, stdDeviation;

    printf("Enter the number of elements: ");
    scanf("%d", &n);

    for(i = 0; i < n; i++) {
        printf("Enter number %d: ", i + 1);
        scanf("%f", &arr[i]);
    }

    for(i = 0; i < n; i++) {
        sum += arr[i];
    }
    mean = sum / n;

    sum = 0; // Reusing sum variable for variance calculation
    for(i = 0; i < n; i++) {
        sum += (arr[i] - mean) * (arr[i] - mean);
    }
    variance = sum / n;
    stdDeviation = sqrtf(variance);

    printf("Mean = ");
    printf("%.2f\n", mean);
    printf("Variance = ");
    printf("%.2f\n", variance);
    printf("Standard Deviation = ");
    printf("%.2f\n", stdDeviation);

    return 0;
}