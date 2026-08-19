#include <stdio.h>

int main() {
    float mm;
    float in;

    printf("Enter length in millimeters: ");
    scanf("%f", &mm);

    in = mm / 25.4;

    printf("%f millimeters is %f inches.\n", mm, in);

    return 0;
}