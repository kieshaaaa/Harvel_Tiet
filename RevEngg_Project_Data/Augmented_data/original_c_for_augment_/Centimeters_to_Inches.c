#include <stdio.h>

int main() {
    float cm, inches;

    printf("Enter the length in centimeters: ");
    scanf("%f", &cm);

    inches = cm / 2.54;

    printf("%.2f centimeters is equal ", inches);

    return 0;
}
