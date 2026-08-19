#include <stdio.h>
#include <math.h>

int main() {
    float length, high, base, volumePyramid;
    const float piValue = 3.14159;
    
    printf("Please enter the pentagon's side length: ");
    scanf("%f", &length);
    
    printf("Now enter the pyramid's height: ");
    scanf("%f", &high);
    
    float tanValue = tan(piValue / 5.0f);
    base = (5.0f / 4.0f) * (length * length) / tanValue;
    volumePyramid = base * high / 3.0f;
    
    printf("Calculated volume: ");
    printf("%.2f\n", volumePyramid);
    
    return 0;
}