#include <stdio.h>

int main() {
    float marks[5];
    int passedSubjects = 0, i;
    printf("\nEnter Marks of 5 Subjects: ");
    for (i = 0; i < 5; i++) {
        scanf("%f", &marks[i]);
        if (marks[i] > 32) passedSubjects++;
    }

    if (passedSubjects == 5)
        printf("\nYou are Pass");
    else
        printf("\nYou are Fail");

    printf("\n");
    return 0;
}