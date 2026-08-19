#include <stdio.h>

int main() {
    float hp, w;
    printf("Enter power in Horsepower: ");
    scanf("%f", &hp);
    
    w = hp * 746.0f;

    printf("Horsepower is equal to ");
    printf("%.2f", w);
    printf(" Watts.\n");
    
    return 0;
}