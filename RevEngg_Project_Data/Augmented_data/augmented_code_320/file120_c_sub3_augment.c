#include<stdio.h>

int main() {
    float num[5] = {1.0, 2.0, 3.0, 4.0, 5.0};
    float sum = 0.0;
    float avg;
    int j;
    
    j = 0;
    while(j < 5) {
        sum += num[j];
        j++;
    }

    avg = sum / 5;

    printf("Total of array elements = %.2f\n", sum);
    printf("Average of array elements = %.2f\n", avg);

    return 0;
}