#include <stdio.h>

int main() {
    float yards, miles;

    printf("Enter the length in yards: ");
    scanf("%f", &yards);

    miles = yards / 1760.0;

    printf(" yards is equal to %.2f miles.\n", miles);

    return 0;
}
