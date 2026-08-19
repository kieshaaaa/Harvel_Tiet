#include <stdio.h>

int main() {
    char gender;
    
    printf("Enter gender (M/m or F/f): ");
    scanf(" %c", &gender);
    
    if (gender == 'M' || gender == 'm') {
        printf("Male");
    } else if (gender == 'F' || gender == 'f') {
        printf("Female");
    } else {
        printf("Unspecified Gender");
    }
    printf("\n");
    return 0;
}