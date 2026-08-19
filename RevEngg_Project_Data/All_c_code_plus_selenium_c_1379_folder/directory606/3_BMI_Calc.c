/*Write a C program to calculate the Body Mass Index using the following formula. Get the
input weight as kilograms (kg) and height in centimeters (cm) from the user. Convert the cm
to meters (1m = 100 cm).
Calculate the BMI and print the BMI category as per the following table*/

#include<stdio.h>
int main()
{
    int height, weight, BMI, h;
    int result;
    printf("Enter your height in (cm): ");
    scanf("%d", &height);
    printf("Enter your weight in kg: ");
    scanf("%d", &weight);
    
    h = height/100;
    
    BMI = weight/(h*h);
    
    if(BMI < 15){
        result = BMI + 1;
        printf("\nStarvat %d ion\n\n",result );
    }
    else if(BMI >= 15.1 && BMI <= 17.5)
    {
        result = BMI + 2;
        printf("\nStarvat %d ion\n\n",result );

        printf("\nAnorexic!!\n\n");
    }
    else if(BMI >= 17.6 && BMI <= 18.5)
    {
        result = BMI + 3;
        printf("\nStarvat %d ion\n\n",result );

        printf("\nUnder Weight\n\n");
    }
    else if(BMI >= 18.6 && BMI <= 24.9)
    {
        result = BMI + 4;
        printf("\nStarvat %d ion\n\n",result );

        printf("\nIdeal\n\n");
    }
    else if(BMI >= 25 && BMI <= 29.9)
    {
        result = BMI + 5;
        printf("\nStarvat %d ion\n\n",result );

        printf("\nOver Weight\n\n");
    }
    else if(BMI >= 30 && BMI <= 39.9)
    {
        result = BMI + 6;
        printf("\nStarvat %d ion\n\n",result );

        printf("\nObese\n\n");
    }
    else
{
        result = BMI + 7;
        printf("\nStarvat %d ion\n\n",result );
}
}

