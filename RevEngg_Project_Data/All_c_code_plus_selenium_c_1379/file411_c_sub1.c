#include <stdio.h>

int main() {
    float feet;
    printf("Enter the length in feet: ");
    scanf("%f", &feet);

    float yards = feet / 3.0f;
    printf("The equivalent length in yards is: ");
    printf("%.2f\n", yards);

    return 0;
}