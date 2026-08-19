#include <stdio.h>

int main() {
    float length, breadth, area;

    printf("Let's calculate the area of a rectangle.\n");
    printf("Please enter the length: ");
    scanf("%f", &length);

    printf("Now, enter the breadth: ");
    scanf("%f", &breadth);

    area = length * breadth;

    printf("The area of the rectangle is: ");
    printf("%f\n", area);

    return 0;
}