#include <stdio.h>

int main() {
    float baseSide, pyramidHeight, calculatedVolume;

    printf("Base length? ");
    scanf("%f", &baseSide);
    
    printf("Height? ");
    scanf("%f", &pyramidHeight);

    calculatedVolume = baseSide * baseSide * pyramidHeight / 3;

    printf("The volume is ");
    printf("%.2f\n", calculatedVolume);

    return 0;
}