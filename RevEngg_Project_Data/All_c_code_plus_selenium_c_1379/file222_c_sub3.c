#include <stdio.h>
#include <math.h>

int main() {
    int count, idx;
    float data[30]; // Assuming a smaller array size of 30 for this example
    float sumOfData = 0, meanValue, varianceValue = 0, standardDev, skewnessValue, cubedSum = 0;

    printf("Enter the number of elements: ");
    scanf("%d", &count);

    for(idx = 0; idx < count; idx++) {
        printf("Enter number %d: ", idx+1);
        scanf("%f", &data[idx]);
        sumOfData += data[idx];
    }

    meanValue = sumOfData / count;

    for(idx = 0; idx < count; idx++) {
        varianceValue += pow(data[idx] - meanValue, 2);
    }
    varianceValue = varianceValue / count;
    standardDev = sqrt(varianceValue);

    for(idx = 0; idx < count; idx++) {
        cubedSum += pow(data[idx] - meanValue, 3);
    }
    skewnessValue = (count / ((count - 1.0f) * (count - 2.0f))) * (cubedSum / count) / pow(standardDev, 3);

    printf("Mean = ");
    printf("%.2f\n", meanValue);
    printf("Variance = ");
    printf("%.2f\n", varianceValue);
    printf("Standard Deviation = ");
    printf("%.2f\n", standardDev);
    printf("Skewness = ");
    printf("%.2f\n", skewnessValue);

    return 0;
}