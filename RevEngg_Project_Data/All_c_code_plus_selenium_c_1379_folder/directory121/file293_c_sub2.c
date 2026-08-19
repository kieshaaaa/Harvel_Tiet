#include <stdio.h>

int main() {
    float inches, feet;
    char confirm;

    printf("Do you want to convert inches to feet? (y/n): ");
    scanf(" %c", &confirm);

    if (confirm == 'y' || confirm == 'Y') {
        printf("Enter the length in inches: ");
        scanf("%f", &inches);

        feet = inches / 12.0;

        printf("The length in feet is: ");
        printf("%.2f\n", feet);
    } else {
        printf("Conversion cancelled.\n");
    }

    return 0;
}