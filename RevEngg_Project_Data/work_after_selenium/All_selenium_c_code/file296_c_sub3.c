#include <stdio.h>

int main() {
    int numberOfSides;
    float lengthOfSide, totalPerimeter;

    printf("Number of sides: ");
    scanf("%d", &numberOfSides);

    printf("Length of one side: ");
    scanf("%f", &lengthOfSide);

    totalPerimeter = numberOfSides * lengthOfSide;

    char message[50];
    sprintf(message, "Perimeter of the polygon: %.2f\n", totalPerimeter);
    printf("%s", message);

    return 0;
}