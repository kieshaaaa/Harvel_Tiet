#include <stdio.h>

int main() {
    float hour, minute, second;
    
    printf("Enter time (in HH:MM:SS) ");
    scanf("%f:%f:%f", &hour, &minute, &second);
    
    if(hour >= 0 && hour <= 23 && minute >= 0 && minute <= 59 && second >= 0 && second <= 59) {
        printf("Entered time is %02d:%02d:%02d\n", (int)hour, (int)minute, (int)second);
    } else {
        printf("Invalid time entered.\n");
    }
    
    return 0;
}