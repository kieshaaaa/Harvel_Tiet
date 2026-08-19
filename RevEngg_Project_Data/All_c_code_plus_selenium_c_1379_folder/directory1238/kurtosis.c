#include <stdio.h>
#include <math.h> // Include the math library for the pow and sqrt functions

int main() {
    int n, i;
    double sum = 0;
    double mean;
    double sumOfQuads = 0;
    double variance = 0;
    double stdDeviation, kurtosis;

    printf("Enter the number of elements: ");
    scanf("%d", &n);

    double arr[n];

    // Input elements
    for(i = 0; i < n; i++) {
        printf("Enter number %d: ", i+1);
        scanf("%lf", &arr[i]);
        sum = sum + arr[i];
    }

    mean = sum / n;

    // Calculate sum of squared differences from the mean for variance
    for(i = 0; i < n; i++) {
        variance += pow(arr[i] - mean, 2);
    }
    variance /= n;
    stdDeviation = sqrt(variance);

    // Calculate sum of fourth powers of differences from the mean for kurtosis
    for(i = 0; i < n; i++) {
        sumOfQuads += pow(arr[i] - mean, 4);
    }

    kurtosis = (n * (n + 1) * sumOfQuads) / ((n - 1) * (n - 2) * (n - 3) * pow(stdDeviation, 4)) - (3 * pow(n - 1, 2)) / ((n - 2) * (n - 3));

    printf("Mean = %.2lf\n", mean);
    printf("Variance = %.2lf\n", variance);
    printf("Standard Deviation = %.2lf\n", stdDeviation);
    printf("Kurtosis = %.2lf\n", kurtosis);

    return 0;
}
