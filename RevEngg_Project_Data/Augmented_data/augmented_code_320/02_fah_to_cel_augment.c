// C program to convert Fahrenheit to Celcius.

// Header Files
#include <stdio.h>


// Main Function Start
int main()
{
    float celsius, fahrenheit;
    printf("\nEnter value in Fahrenheit to convert in Celcius => ");
    scanf("%f", &fahrenheit);
    celsius = (fahrenheit - 32) * 5 / 9;
    printf("\n %f Fahrenheit = %.4f Celcius\n", fahrenheit, celsius);


    return 0;
}
// Main Function End