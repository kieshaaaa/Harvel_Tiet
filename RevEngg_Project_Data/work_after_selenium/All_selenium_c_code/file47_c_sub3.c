#include <stdio.h>

int main() {
    char gender;
    
    printf("Enter gender (M/m or F/f): ");
    scanf(" %c", &gender);
    
    // Convert uppercase to lowercase by adding 32 to ASCII value if it is uppercase
    gender = (gender >= 'A' && gender <= 'Z') ? gender + 32 : gender;
    
    if (gender == 'm') {
        printf("Male");
    } else if (gender == 'f') {
        printf("Female");
    } else {
        printf("Unspecified Gender");
    }
    printf("\n");
    return 0;
}