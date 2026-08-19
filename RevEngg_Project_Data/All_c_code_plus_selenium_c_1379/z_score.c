#include <stdio.h>

int main() {
    double value, mean, stdDeviation, zScore;

    // Input the specific value, mean, and standard deviation
    printf("Enter the value: ");
    scanf("%lf", &value);

    printf("Enter the mean of the dataset: ");
    scanf("%lf", &mean);

    printf("Enter the standard deviation of the dataset: ");
    scanf("%lf", &stdDeviation);

    // Calculate the Z-score
    zScore = (value - mean) / stdDeviation;

    printf("Z-score: %.2lf\n", zScore);

    return 0;
}
