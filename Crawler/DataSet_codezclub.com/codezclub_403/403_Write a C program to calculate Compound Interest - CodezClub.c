/* Source: https://www.codezclub.com/c-calculate-compound-interest/ */
#include <stdio.h>
#include <math.h>
 
int main()
{
    float principal, rate, year, ci;
     
    printf("Enter principal: ");
    scanf("%f", &principal);
     
    printf("Enter rate: ");
    scanf("%f", &rate);    
     
    printf("Enter time in years: ");
    scanf("%f", &year);
 
    //calculate comp. interest
 
    ci=principal*((pow((1+rate/100),year)-1));
     
    printf("Comp. interest is: %f\n",ci);
         
    return 0;
}