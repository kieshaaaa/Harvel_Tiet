#include <stdio.h>

int main() {
    float marks[5];
    int i, pass = 1;
    printf("\nEnter Marks of 5 Subjects: ");
    for (i = 0; i < 5; i++) {
        scanf("%f", &marks[i]);
        if (marks[i] <= 32) pass = 0;
    }

    if (pass)
        printf("\nYou are Pass");
    else
        printf("\nYou are Fail");

    printf("\n");
    return 0;
}