#include <stdio.h>

int main() {
    float kmph, knots;
    char inputMsg[] = "Enter speed in kilometers per hour: ";
    char outputMsg[] = "The speed in knots is ";
    
    printf("%s", inputMsg);
    scanf("%f", &kmph);
    knots = kmph / 1.852;
    printf("%s", outputMsg);
    printf("%f\n", knots);
    return 0;
}