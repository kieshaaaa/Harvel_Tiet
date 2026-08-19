#include<stdio.h>

int main() {
    float numbers[5] = {1.0, 2.0, 3.0, 4.0, 5.0};
    float total = 0.0;
    float average;
    int i;

    for(i = 0; i < 5; i++) {
        total += numbers[i];
    }

    average = total / 5;

    printf("Total of array elements = %.2f\n", total);
    printf("Average of array elements = %.2f\n", average);

    return 0;
}