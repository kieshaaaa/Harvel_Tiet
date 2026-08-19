#include <stdio.h>

int main() {
    int wDay;
    printf("Enter weekday number (0-6): ");
    scanf("%d", &wDay);
    
    char* weekdays[] = {"Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"};
    
    if(wDay >= 0 && wDay <= 6) {
        printf("%s", weekdays[wDay]);
    } else {
        printf("Invalid weekday number.");
    }
    printf("\n");
    return 0;
}