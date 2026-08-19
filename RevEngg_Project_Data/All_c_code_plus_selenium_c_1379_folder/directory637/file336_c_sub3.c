#include <stdio.h>

int main() {
    int age;
    char gender;

    printf("Gender (M/F)? ");
    scanf(" %c", &gender);
    printf("Age? ");
    scanf("%d", &age);

    if ((gender == 'F' || gender == 'f') && age >= 18) {
        printf("Woman\n");
    } else if ((gender == 'F' || gender == 'f') && age < 18) {
        printf("Girl\n");
    } else if ((gender == 'M' || gender == 'm') && age >= 18) {
        printf("Man\n");
    } else if ((gender == 'M' || gender == 'm') && age < 18) {
        printf("Boy\n");
    } else {
        printf("Invalid input\n");
    }

    return 0;
}