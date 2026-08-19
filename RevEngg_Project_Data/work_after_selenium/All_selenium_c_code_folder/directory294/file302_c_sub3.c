#include <stdio.h>

int main() {
    float degrees, gradians;
    char confirm;
    printf("Convert degrees to gradians? (y/n): ");
    scanf(" %c", &confirm); // Notice the space before %c to catch any newline characters left in the input buffer
    if (confirm == 'y' || confirm == 'Y') {
        printf("Enter angle in degrees: ");
        scanf("%f", &degrees);
        gradians = degrees * (200.0 / 180.0);
        printf("Angle in gradians: %f\n", gradians);
    } else {
        printf("Conversion canceled.\n");
    }
    return 0;
}