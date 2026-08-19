#include <stdio.h>

int main() {
    float mph, knots;
    printf("Enter speed in miles per hour: ");
    scanf("%f", &mph);
    knots = mph / 1.150;
    printf(" mph is %f knots.\n", knots);
    return 0;
}
