#include <stdio.h>
#include <math.h>

int main() {
    int n, i;
    float arr[100]; // Assuming a maximum of 100 elements
    float sum = 0;
    float mean, variance = 0, stdDeviation, skewness, sumOfCubes = 0;

    printf("Enter the number of elements: ");
    scanf("%d", &n);

    for(i = 0; i < n; i++) {
        printf("Enter number %d: ", i+1);
        scanf("%f", &arr[i]);
        sum += arr[i];
    }

    mean = sum / n;

    for(i = 0; i < n; i++) {
        variance += pow(arr[i] - mean, 2);
    }
    variance = variance / n;
    stdDeviation = sqrt(variance);

    for(i = 0; i < n; i++) {
        sumOfCubes += pow(arr[i] - mean, 3);
    }
    skewness = (n / ((n - 1.0f) * (n - 2.0f))) * (sumOfCubes / n) / pow(stdDeviation, 3);

    printf("Mean = ");
    printf("%.2f\n", mean);
    printf("Variance = ");
    printf("%.2f\n", variance);
    printf("Standard Deviation = ");
    printf("%.2f\n", stdDeviation);
    printf("Skewness = ");
    printf("%.2f\n", skewness);

    return 0;
}