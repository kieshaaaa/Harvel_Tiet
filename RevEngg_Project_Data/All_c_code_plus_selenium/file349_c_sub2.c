#include<stdio.h>

int main() {
    int age;
    printf("Enter your age: ");
    scanf("%d", &age);

    age >= 18 ? printf("Eligible to Vote.\n") : printf("Not Eligible to Vote.\n");

    return 0;
}