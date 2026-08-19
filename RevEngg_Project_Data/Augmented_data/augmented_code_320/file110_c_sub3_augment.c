#include <stdio.h>

int main() {
    float baseLength, height, volume;

    printf("Base length? ");
    scanf("%f", &baseLength);
    
    printf("Height? ");
    scanf("%f", &height);

    volume = baseLength * baseLength * height / 3;

    printf("The volume is ");
    printf("%.2f\n", volume);

    return 0;
}