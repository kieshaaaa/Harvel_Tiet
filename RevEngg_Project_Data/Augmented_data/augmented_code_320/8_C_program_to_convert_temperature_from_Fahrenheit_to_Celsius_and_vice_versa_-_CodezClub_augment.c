/* Source: https://www.codezclub.com/c-convert-temperature-fahrenheit-to-celsius-vice-versa/ */
/*  C program to convert temperature from Fahrenheit to Celsius and vice versa  */

#include <stdio.h>

int main()
{

    float fahrenheit, celsius;
    int option;

    printf("\n1: Convert temperature from Fahrenheit to Celsius.");
    printf("\n2: Convert temperature from Celsius to Fahrenheit.\n");
    printf("\nEnter your choice (1, 2): ");
    scanf("%d",&option);

    if(option == 1){
        printf("\nEnter temperature in Fahrenheit: ");
        scanf("%f",&fahrenheit);
        celsius= (fahrenheit - 32) / 1.8;
        printf("\nTemperature in Celsius: %.2f",celsius);
    }
    else if(option == 2){
        printf("\nEnter temperature in Celsius: ");
        scanf("%f",&celsius);
        fahrenheit= (celsius*1.8)+32;
        printf("\nTemperature in Fahrenheit: %.2f",fahrenheit);
    }
    else{
        printf("\nInvalid Choice !!!");
    }
    return 0;
}