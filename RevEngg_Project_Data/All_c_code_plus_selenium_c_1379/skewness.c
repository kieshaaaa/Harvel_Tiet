#include <stdio.h>
#include <math.h> // Include the math library for the pow and sqrt functions

int main() {
    int n, i;
    double sum = 0;
    double mean;
    double sumOfCubes = 0;
    double variance = 0;
    double stdDeviation, skewness;

    printf("Enter the number of elements: ");
    scanf("%d", &n);



    // Input elements
    for(i = 0; i < n; i++) {
        printf("Enter number %d: ", i+1);
        scanf("%lf", &arr[i]);
        sum += arr[i];
    }

    mean = sum / n;

    // Calculate sum of squared differences from the mean for variance
    for(i = 0; i < n; i++) {
        variance += pow(arr[i] - mean, 2);
    }
    variance /= n;
    stdDeviation = sqrt(variance);

    // Calculate sum of cubed differences from the mean for skewness
    for(i = 0; i < n; i++) {
        sumOfCubes += pow(arr[i] - mean, 3);
    }

    skewness = (n / ((n - 1.0) * (n - 2.0))) * (sumOfCubes / n) / pow(stdDeviation, 3);

    printf("Mean = %.2lf\n", mean);
    printf("Variance = %.2lf\n", variance);
    printf("Standard Deviation = %.2lf\n", stdDeviation);
    printf("Skewness = %.2lf\n", skewness);

    return 0;
}
