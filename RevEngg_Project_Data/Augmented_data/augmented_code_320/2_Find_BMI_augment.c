#include<stdio.h>
int main()
{
    float height_meters, weight_kg, BMI;
    printf("Enter your height (cm): \n");
    scanf("%f", &height_meters);
    
    printf("Enter your weight (kg): \n");
    scanf("%f", &weight_kg);
    
    height_meters = height_meters/100;
    BMI = weight_kg/(height_meters*height_meters);
    
    printf("Your BMI is: %f \n", BMI);
}