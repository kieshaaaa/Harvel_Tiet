#include <stdio.h>

int main() {
    float mm, inches;

    printf("Enter the length in millimeters: ");
    scanf("%f", &mm);

    inches = mm / 25.4;

    printf("millimeters is equal to %.2f inches.\n", inches);

    return 0;
}
