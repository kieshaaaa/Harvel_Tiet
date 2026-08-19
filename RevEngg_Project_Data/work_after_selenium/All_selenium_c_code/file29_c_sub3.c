#include <stdio.h>

int main() {
    float sum = 0, num;
    printf("Enter the first number: ");
    scanf("%f", &num); sum += num;
    printf("Enter the second number: ");
    scanf("%f", &num); sum += num;
    printf("Enter the third number: ");
    scanf("%f", &num); sum += num;
    printf("Enter the fourth number: ");
    scanf("%f", &num); sum += num;
    printf("Enter the fifth number: ");
    scanf("%f", &num); sum += num;

    printf("The result of adding the numbers is: %.2f\n", sum);
    return 0;
}