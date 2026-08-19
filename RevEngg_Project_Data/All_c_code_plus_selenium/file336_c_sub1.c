#include <stdio.h>

int main() {
    int age;
    char gender;

    printf("Enter gender (M/F): ");
    scanf(" %c", &gender); // Note the space before %c to catch any whitespace
    printf("Enter age: ");
    scanf("%d", &age);

    if (gender == 'M' || gender == 'm') {
        if (age < 18) {
            printf("Boy\n");
        } else {
            printf("Man\n");
        }
    } else if (gender == 'F' || gender == 'f') {
        if (age < 18) {
            printf("Girl\n");
        } else {
            printf("Woman\n");
        }
    } else {
        printf("Invalid gender input\n");
    }

    return 0;
}