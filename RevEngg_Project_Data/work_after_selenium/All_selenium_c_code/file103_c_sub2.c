#include <stdio.h>

int main() {
    printf("Enter the value: ");
    float value;
    scanf("%f", &value);

    printf("Enter the mean of the dataset: ");
    float mean;
    scanf("%f", &mean);

    printf("Enter the standard deviation of the dataset: ");
    float stdDeviation;
    scanf("%f", &stdDeviation);

    float zScore = (value - mean) / stdDeviation;

    printf("Z-score: ");
    printf("%.2f\n", zScore);

    return 0;
}