#include <stdio.h>

int main() {
    float inches, feet;
    char choice;

    do {
        printf("Enter the length in inches: ");
        scanf("%f", &inches);

        feet = inches / 12.0;

        printf("The length in feet is: ");
        printf("%.2f\n", feet);

        printf("Do you want to convert another length? (y/n): ");
        scanf(" %c", &choice);

    } while(choice == 'y' || choice == 'Y');

    return 0;
}