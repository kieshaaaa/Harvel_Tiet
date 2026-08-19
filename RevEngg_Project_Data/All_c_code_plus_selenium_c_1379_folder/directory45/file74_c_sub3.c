#include <stdio.h>

int main() {
    float p, q;

    printf("Enter the first number: ");
    scanf("%f", &p);
    printf("Enter the second number: ");
    scanf("%f", &q);

    printf("Before swapping: p = %.2f, q = %.2f\n", p, q);

    if (p != 0 && q != 0) {
        // Swapping
        p = p * q;
        q = p / q;
        p = p / q;
    } else {
        printf("One of the numbers is 0, cannot proceed with multiplication/division method.\n");
    }

    printf("After swapping: p = %.2f, q = %.2f\n", p, q);

    return 0;
}