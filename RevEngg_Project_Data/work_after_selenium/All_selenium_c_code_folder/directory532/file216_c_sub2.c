#include<stdio.h>

int main() {
    char regno[15];
    char name[20];
    int age;
    int dobYear, dobMonth;
    float result;

    printf("Enter your Register number:\n");
    scanf("%14s", regno);

    printf("Enter your Name:\n");
    scanf("%19s", name);

    printf("Enter your age:\n");
    scanf("%d", &age);

    printf("Enter your DOB Year:\n");
    scanf("%d", &dobYear);

    printf("Enter your DOB Month:\n");
    scanf("%d", &dobMonth);

    result = age + dobYear + (float)dobMonth / 100; // Assuming month as a fractional part of a year
    printf("Name: \t Reg No: \t Age: \t DOB Year: \t DOB Month:\n");
    printf("%s \t %s \t %d \t %d \t\t %d \nResult: %.2f\n", name, regno, age, dobYear, dobMonth, result);

    return 0;
}