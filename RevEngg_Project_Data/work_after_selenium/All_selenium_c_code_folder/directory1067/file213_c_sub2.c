#include <stdio.h>

int main() {
    float numbers[5], sum = 0;
    int i;

    printf("Enter five numbers separated by spaces (a b c d e): ");
    for (i = 0; i < 5; i++) {
        scanf("%f", &numbers[i]);
    }

    for (i = 0; i < 4; i++) {
        sum += numbers[i];
    }
    sum -= numbers[4];

    printf("The result is: %.2f\n", sum);

    return 0;
}