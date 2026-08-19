#include <stdio.h>

int main() {
    int n, i;
    float sum = 0;
    float mean;
    float variance = 0;
    float sumOfSquares = 0;
    printf("Enter the number of elements: ");
    scanf("%d", &n);
    float arr[100]; // Assuming a maximum of 100 elements

    for(i = 0; i < n; i++) {
        printf("Enter number %d: ", i+1);
        scanf("%f", &arr[i]);
        sum = sum + arr[i];
    }

    mean = sum / n;

    for(i = 0; i < n; i++) {
        float diff = arr[i] - mean;
        sumOfSquares = sumOfSquares + diff * diff;
    }

    variance = sumOfSquares / n;
    printf("Mean = ");
    printf("%.2f\n", mean);
    printf("Variance = ");
    printf("%.2f\n", variance);

    return 0;
}