#include <stdio.h>

int main() {
    int hour, minute, second;
    
    printf("Enter hour (HH): ");
    scanf("%d", &hour);
    
    printf("Enter minute (MM): ");
    scanf("%d", &minute);
    
    printf("Enter second (SS): ");
    scanf("%d", &second);
    
    if(hour >= 0 && hour <= 23 && minute >= 0 && minute <= 59 && second >= 0 && second <= 59) {
        printf("Entered time is %02d:%02d:%02d\n", hour, minute, second);
    } else {
        printf("Invalid time entered.\n");
    }
    
    return 0;
}