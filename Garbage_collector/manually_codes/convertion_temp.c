#include<stdio.h>
#include<stdlib.h>
main()
{

                float celsius, fahrenheit;

                // Reads temperature in Fahrenheit from user
                printf("Enter temperature in Fahrenheit: ");
                scanf("%f", &fahrenheit);

                // Converts fahrenheit to celsius
                celsius = (fahrenheit - 32) * 5 / 9;

                printf("\n%.2f Fahrenheit = %.2f Celsius", fahrenheit, celsius);


                return 0;
}



