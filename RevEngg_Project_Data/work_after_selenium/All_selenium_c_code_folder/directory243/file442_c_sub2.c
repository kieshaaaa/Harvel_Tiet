#include <stdio.h>

int main() {
    float tempInput, tempOutput;
    int mode;

    printf("\n1: Fahrenheit -> Celsius");
    printf("\n2: Celsius -> Fahrenheit\n");
    printf("\nSelect 1 or 2: ");
    scanf("%d", &mode);

    switch (mode) {
        case 1:
            printf("\nFahrenheit: ");
            scanf("%f", &tempInput);
            tempOutput = (tempInput - 32) * 5 / 9;
            printf("\nCelsius: %.2f", tempOutput);
            break;
        case 2:
            printf("\nCelsius: ");
            scanf("%f", &tempInput);
            tempOutput = (tempInput * 9 / 5) + 32;
            printf("\nFahrenheit: %.2f", tempOutput);
            break;
        default:
            printf("\nWrong choice.");
            break;
    }
    return 0;
}