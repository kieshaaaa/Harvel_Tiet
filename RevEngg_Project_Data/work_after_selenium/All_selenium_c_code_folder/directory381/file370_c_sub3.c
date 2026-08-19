#include <stdio.h>

int main() {
    int n, i;
    float arr[100]; // Assuming a maximum of 100 elements
    float sum = 0, mean, variance, sumOfSquares = 0, temp;

    printf("Enter the number of elements: ");
    scanf("%d", &n);

    for(i = 0; i < n; i++) {
        printf("Enter number %d: ", i+1);
        scanf("%f", &arr[i]);
        sum += arr[i];
    }

    mean = sum / n;

    for(i = 0; i < n; i++) {
        temp = arr[i] - mean;
        sumOfSquares += temp * temp;
    }

    variance = sumOfSquares / n;

    printf("Mean = ");
    printf("%.2f\n", mean);
    printf("Variance = ");
    printf("%.2f\n", variance);

    return 0;
}