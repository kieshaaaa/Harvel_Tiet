#include <stdio.h>
#include <math.h>

int main() {
    int n, i;
    float mean, variance, stdDeviation, kurtosis;
    float sum = 0, sumOfQuads = 0, diff;

    printf("Enter the number of elements: ");
    scanf("%d", &n);

    float arr[n];

    for(i = 0; i < n; i++) {
        printf("Enter number %d: ", i + 1);
        scanf("%f", &arr[i]);
        sum += arr[i];
    }

    mean = sum / n;

    sum = 0; // Reusing sum variable for variance calculation for better memory usage

    for(i = 0; i < n; i++) {
        diff = arr[i] - mean;
        sum += diff * diff; // Now sum holds the sum of squared differences
        sumOfQuads += pow(diff, 4);
    }

    variance = sum / n;
    stdDeviation = sqrt(variance);
    kurtosis = (n * (n + 1) * sumOfQuads) / ((n - 1) * (n - 2) * (n - 3) * pow(stdDeviation, 4)) - (3 * pow(n - 1, 2)) / ((n - 2) * (n - 3));

    printf("Mean = %.2f\n", mean);
    printf("Variance = %.2f\n", variance);
    printf("Standard Deviation = %.2f\n", stdDeviation);
    printf("Kurtosis = %.2f\n", kurtosis);

    return 0;
}