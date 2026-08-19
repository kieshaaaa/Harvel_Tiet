#include <stdio.h>

int main() {
    float value, mean, stdDeviation;
    
    printf("Enter the value: ");
    scanf("%f", &value);

    printf("Enter the mean of the dataset: ");
    scanf("%f", &mean);

    printf("Enter the standard deviation of the dataset: ");
    scanf("%f", &stdDeviation);

    {
        float zScore = (value - mean) / stdDeviation;
        printf("Z-score: ");
        printf("%.2f\n", zScore);
    }

    return 0;
}