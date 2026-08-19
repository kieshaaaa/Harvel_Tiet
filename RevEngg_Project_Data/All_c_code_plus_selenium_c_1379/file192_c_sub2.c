#include <stdio.h>

int main() {
    float m1, m2, m3, m4, m5;
    printf("\nEnter Marks of 5 Subjects: ");
    scanf("%f%f%f%f%f", &m1, &m2, &m3, &m4, &m5);

    int isPass = m1 > 32 && m2 > 32 && m3 > 32 && m4 > 32 && m5 > 32;
    if (isPass)
        printf("\nYou are Pass");
    else
        printf("\nYou are Fail");

    printf("\n");
    return 0;
}