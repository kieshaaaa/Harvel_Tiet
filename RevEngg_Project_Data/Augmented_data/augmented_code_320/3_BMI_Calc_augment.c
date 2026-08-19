/*Write a C program to calculate the Body Mass Index using the following formula. Get the
input weight as kilograms (kg) and height in centimeters (cm) from the user. Convert the cm
to meters (1m = 100 cm).
Calculate the BMI and print the BMI category as per the following table*/

#include<stdio.h>
int main()
{
    float heightCm, weightKg, bodyMassIndex;
    int category;
    printf("Enter your height in (cm): ");
    scanf("%f", &heightCm);
    printf("Enter your weight in kg: ");
    scanf("%f", &weightKg);
    
    float heightM = heightCm/100;
    
    bodyMassIndex = weightKg/(heightM*heightM);
    
    if(bodyMassIndex < 15){
        category = (int)bodyMassIndex + 1;
        printf("\nStarvat %d ion\n\n",category );
    }
    else if(bodyMassIndex >= 15.1 && bodyMassIndex <= 17.5)
    {
        category = (int)bodyMassIndex + 2;
        printf("\nStarvat %d ion\n\n",category );

        printf("\nAnorexic!!\n\n");
    }
    else if(bodyMassIndex >= 17.6 && bodyMassIndex <= 18.5)
    {
        category = (int)bodyMassIndex + 3;
        printf("\nStarvat %d ion\n\n",category );

        printf("\nUnder Weight\n\n");
    }
    else if(bodyMassIndex >= 18.6 && bodyMassIndex <= 24.9)
    {
        category = (int)bodyMassIndex + 4;
        printf("\nStarvat %d ion\n\n",category );

        printf("\nIdeal\n\n");
    }
    else if(bodyMassIndex >= 25 && bodyMassIndex <= 29.9)
    {
        category = (int)bodyMassIndex + 5;
        printf("\nStarvat %d ion\n\n",category );

        printf("\nOver Weight\n\n");
    }
    else if(bodyMassIndex >= 30 && bodyMassIndex <= 39.9)
    {
        category = (int)bodyMassIndex + 6;
        printf("\nStarvat %d ion\n\n",category );

        printf("\nObese\n\n");
    }
    else
{
        category = (int)bodyMassIndex + 7;
        printf("\nStarvat %d ion\n\n",category );
}
}