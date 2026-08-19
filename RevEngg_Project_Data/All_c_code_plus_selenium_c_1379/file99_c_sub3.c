#include <stdio.h>

int main() {
    int wDay;
    printf("Enter weekday number (0-6): ");
    scanf("%d", &wDay);

    if(wDay < 0 || wDay > 6) {
        printf("Invalid weekday number.\n");
        return 0; // Early return to avoid entering the switch if the input is invalid.
    }
    
    switch(wDay) {
        case 0: 
            printf("Sunday");
            break;
        case 1: 
            printf("Monday");
            break;
        case 2: 
            printf("Tuesday");
            break;
        case 3: 
            printf("Wednesday");
            break;
        case 4: 
            printf("Thursday");
            break;
        case 5: 
            printf("Friday");
            break;
        case 6: 
            printf("Saturday");
            break;
    }
    printf("\n");
    return 0;
}