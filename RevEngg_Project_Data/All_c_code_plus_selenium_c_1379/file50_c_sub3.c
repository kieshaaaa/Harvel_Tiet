#include <stdio.h>

int main() {
    float num1, num2, num3, num4, sum;
    printf("\nEnter Four Numbers: ");
    scanf("%f %f %f %f", &num1, &num2, &num3, &num4);
    
    sum = num1 + num2 + num3 + num4;
    printf("\nSum of 4 numbers is %.2f\n", sum); // Display sum with 2 decimal places
    return 0;
}