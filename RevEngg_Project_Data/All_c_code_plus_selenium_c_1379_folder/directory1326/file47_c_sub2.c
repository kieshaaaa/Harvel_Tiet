#include <stdio.h>

int main() {
    char gender;
    
    printf("Enter gender (M/m or F/f): ");
    scanf(" %c", &gender);
    
    printf("%s\n", (gender == 'M' || gender == 'm') ? "Male" : (gender == 'F' || gender == 'f') ? "Female" : "Unspecified Gender");
    
    return 0;
}