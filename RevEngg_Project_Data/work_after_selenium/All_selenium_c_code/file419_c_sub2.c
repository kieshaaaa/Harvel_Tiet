#include <stdio.h>

int main() {
    float length_cm, length_inches;

    printf("Please enter length in cm: ");
    scanf("%f", &length_cm);

    length_inches = length_cm / 2.54;
    printf("The length in inches is: ");
    printf("%.2f\n", length_inches);

    return 0;
}