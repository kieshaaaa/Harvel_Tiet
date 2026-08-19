#include <stdio.h>

int main() {
    int wDay;
    printf("Enter weekday number (0-6): ");
    scanf("%d", &wDay);
    
    if(wDay == 0) {
        printf("Sunday");
    } else if(wDay == 1) {
        printf("Monday");
    } else if(wDay == 2) {
        printf("Tuesday");
    } else if(wDay == 3) {
        printf("Wednesday");
    } else if(wDay == 4) {
        printf("Thursday");
    } else if(wDay == 5) {
        printf("Friday");
    } else if(wDay == 6) {
        printf("Saturday");
    } else {
        printf("Invalid weekday number.");
    }
    printf("\n");
    return 0;
}