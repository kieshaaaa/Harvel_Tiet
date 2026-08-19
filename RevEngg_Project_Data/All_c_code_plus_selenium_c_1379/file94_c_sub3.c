#include <stdio.h>

int main() {
    float yards, miles;

    printf("Input the distance in yards to convert into miles: ");
    scanf("%f", &yards);

    miles = yards / 1760.0;

    printf("The distance in miles is: %.2f\n", miles);

    return 0;
}