#include <stdio.h>
#include <math.h>

int main() {
    int n, i;
    float values[50]; // Assuming a maximum of 50 elements for variety
    float total = 0, avg, var = 0, stdDev, skew, cubeDiffSum = 0;

    printf("Enter the number of elements: ");
    scanf("%d", &n);

    for(i = 0; i < n; i++) {
        printf("Enter number %d: ", i+1);
        scanf("%f", &values[i]);
        total += values[i];
    }

    avg = total / n;

    for(i = 0; i < n; i++) {
        var += pow(values[i] - avg, 2);
    }
    var = var / n;
    stdDev = sqrt(var);

    for(i = 0; i < n; i++) {
        cubeDiffSum += pow(values[i] - avg, 3);
    }
    skew = (n / ((n - 1.0f) * (n - 2.0f))) * (cubeDiffSum / n) / pow(stdDev, 3);

    printf("Mean = ");
    printf("%.2f\n", avg);
    printf("Variance = ");
    printf("%.2f\n", var);
    printf("Standard Deviation = ");
    printf("%.2f\n", stdDev);
    printf("Skewness = ");
    printf("%.2f\n", skew);

    return 0;
}