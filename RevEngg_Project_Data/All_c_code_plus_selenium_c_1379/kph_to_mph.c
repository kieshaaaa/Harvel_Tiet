#include <stdio.h>

int main() {
    float kmph, mph;
    printf("Enter speed in kilometers per hour: ");
    scanf("%f", &kmph);
    mph = kmph / 1.609;
    printf(" km/h is %f mph.\n", mph);
    return 0;
}

