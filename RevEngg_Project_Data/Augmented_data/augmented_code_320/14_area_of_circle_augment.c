// // C program to take radius of circle and print area of circle in following format :-
// // 👉 Output => Area of Circle is A having radius R
// // Where A is Area of Circle and R is Radius of Circle.

// // Header files
#include <stdio.h>

// // Main Function Start
int main()
{

    float rad, area_circle;
    printf("\nEnter Radius of Circle => ");
    scanf("%f", &rad);
    area_circle = 22.0 / 7 * rad * rad;
    printf("\nArea of Circle is %.2f having Radius %.2f\n", area_circle, rad);

    return 0;
}
// // Main Function End