#include <stdio.h>
#include <math.h>

int main() {
    int n, i;
    float sum = 0, mean, variance = 0, stdDeviation, kurtosis, sumOfQuads = 0;

    printf("Enter the number of elements: ");
    scanf("%d", &n);

    float arr[n];

    for(i = 0; i < n; i++) {
        printf("Enter number %d: ", i + 1);
        scanf("%f", &arr[i]);
        sum += arr[i];
    }

    mean = sum / n;

    for(i = 0; i < n; i++) {
        variance += pow(arr[i] - mean, 2);
    }
    variance /= n;
    stdDeviation = sqrt(variance);

    for(i = 0; i < n; i++) {
        sumOfQuads += pow(arr[i] - mean, 4);
    }
    kurtosis = (n * (n + 1) * sumOfQuads) / ((n - 1) * (n - 2) * (n - 3) * pow(stdDeviation, 4)) - (3 * pow(n - 1, 2)) / ((n - 2) * (n - 3));

    printf("Mean = %.2f\n", mean);
    printf("Variance = %.2f\n", variance);
    printf("Standard Deviation = %.2f\n", stdDeviation);
    printf("Kurtosis = %.2f\n", kurtosis);

    return 0;
}