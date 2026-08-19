#include <stdio.h>

int main() {
    float temperatureF, temperatureC;
    char option;

    printf("\nF: Fahrenheit to Celsius");
    printf("\nC: Celsius to Fahrenheit\n");
    printf("\nOption (F/C): ");
    scanf(" %c", &option); // Notice the space before %c to consume any newline left in the input buffer

    if (option == 'F' || option == 'f') {
        printf("\nFahrenheit: ");
        scanf("%f", &temperatureF);
        temperatureC = (temperatureF - 32) * 5.0 / 9.0;
        printf("\nCelsius: %.2f", temperatureC);
    } else if (option == 'C' || option == 'c') {
        printf("\nCelsius: ");
        scanf("%f", &temperatureC);
        temperatureF = (temperatureC * 9.0 / 5.0) + 32;
        printf("\nFahrenheit: %.2f", temperatureF);
    } else {
        printf("\nInvalid selection.");
    }
    return 0;
}