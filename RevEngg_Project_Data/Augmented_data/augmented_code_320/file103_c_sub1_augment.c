#include <stdio.h>

int main() {
    float num, avg, stdDev, zScore;
    
    printf("Enter the value: ");
    scanf("%f", &num);

    printf("Enter the mean of the dataset: ");
    scanf("%f", &avg);

    printf("Enter the standard deviation of the dataset: ");
    scanf("%f", &stdDev);

    zScore = (num - avg) / stdDev;

    printf("Z-score: ");
    printf("%.2f\n", zScore);

    return 0;
}