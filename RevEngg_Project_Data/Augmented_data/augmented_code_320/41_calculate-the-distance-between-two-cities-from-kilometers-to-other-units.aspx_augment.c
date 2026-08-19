/* Source: https://www.includehelp.com/c-programs/calculate-the-distance-between-two-cities-from-kilometers-to-other-units.aspx */

/* 	calculate the distance in meter, feet, 
	inches and centimeter
*/

#include <stdio.h>

int main()
{
    /*Declare the variables*/
    int kilometers;
    float meters;
    float feet;
    float inches;
    float centimeters;

    /*input the value of distance through the keyboard*/
    printf("Enter the distance between Gwalior and Delhi (in KM): ");
    scanf("%d", &kilometers);

    /*  converting the distance into meters, feet, 
        inches, and, centimeter
    */
    meters = kilometers * 1000;
    feet = kilometers * 3280.84;
    inches = kilometers * 39370.1;
    centimeters = kilometers * 100000;

    /*printing the results*/
    printf("Meters = %f\n", meters);
    printf("Feet = %f\n", feet);
    printf("Inches = %f\n", inches);
    printf("Centimeters = %f\n", centimeters);

    return 0;
}