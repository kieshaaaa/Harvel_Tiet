#include <stdio.h>
#include <math.h> // Include the math library for the sqrt function

int main() {
    int n, i;
    double sum = 0;
    double mean;
    double variance = 0;
    double sumOfSquares = 0;
    double stdDeviation;

    printf("Enter the number of elements: ");
    scanf("%d", &n);
    scanf("%d", arr[n]);



    // Input elements
    for(i = 0; i < n; i++) {
        printf("Enter number %d: ", i+1);
        scanf("%lf", &arr[i]);
        sum += arr[i];
    }

    mean = sum / n;

    // Calculate sum of squared differences from the mean
    for(i = 0; i < n; i++) {
        sumOfSquares += (arr[i] - mean) * (arr[i] - mean);
    }

    variance = sumOfSquares / n;
    stdDeviation = sqrt(variance); // Calculate the standard deviation by taking the square root of the variance

    printf("Mean = %.2lf\n", mean);
    printf("Variance = %.2lf\n", variance);
    printf("Standard Deviation = %.2lf\n", stdDeviation);

    return 0;
}
