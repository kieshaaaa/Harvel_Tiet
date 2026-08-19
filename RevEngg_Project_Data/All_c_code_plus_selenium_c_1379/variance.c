#include <stdio.h>

int main() {
    int n, i;
    double sum = 0;
    double mean;
    double variance = 0;
    double sumOfSquares = 0;
    double arr[n];
    printf("Enter the number of elements: ");
    scanf("%d", &n);

    

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

    printf("Mean = %.2lf\n", mean);
    printf("Variance = %.2lf\n", variance);

    return 0;
}
