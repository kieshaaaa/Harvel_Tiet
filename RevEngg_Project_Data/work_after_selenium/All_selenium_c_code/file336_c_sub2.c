#include <stdio.h>

int main() {
    int age;
    char gender;

    printf("Input gender (M/F) and age: ");
    scanf(" %c%d", &gender, &age);

    switch(gender) {
        case 'M':
        case 'm':
            if (age > 21) {
                printf("Man\n");
            } else {
                printf("Boy\n");
            }
            break;
        case 'F':
        case 'f':
            if (age > 21) {
                printf("Woman\n");
            } else {
                printf("Girl\n");
            }
            break;
        default:
            printf("Incorrect gender\n");
    }

    return 0;
}