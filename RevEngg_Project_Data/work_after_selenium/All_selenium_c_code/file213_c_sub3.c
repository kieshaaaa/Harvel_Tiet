#include <stdio.h>

int main() {
    float num, sum = 0;
    int count;

    printf("Enter five numbers separated by spaces (a b c d e): ");

    for (count = 1; count <= 4; count++) {
        scanf("%f", &num);
        sum += num;
    }

    scanf("%f", &num); // This is for 'e'
    sum -= num;

    printf("The result is: %.2f\n", sum);

    return 0;
}