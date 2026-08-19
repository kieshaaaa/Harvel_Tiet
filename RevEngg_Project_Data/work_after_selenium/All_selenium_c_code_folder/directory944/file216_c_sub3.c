#include<stdio.h>

int main() {
    char regno[15];
    char name[20];
    int age;
    int dobDay, dobMonth, dobYear;
    float result;

    printf("Enter your Register number:\n");
    scanf("%14s", regno);

    printf("Enter your Name:\n");
    scanf("%19s", name);

    printf("Enter your age:\n");
    scanf("%d", &age);

    printf("Enter your DOB Day:\n");
    scanf("%d", &dobDay);

    printf("Enter your DOB Month:\n");
    scanf("%d", &dobMonth);

    printf("Enter your DOB Year:\n");
    scanf("%d", &dobYear);

    result = age + dobYear + (dobMonth / 12.0) + (dobDay / 365.0); // Approximation for month/year ratio
    printf("Name: \t Reg No: \t Age: \t DOB (DD/MM/YYYY): \n");
    printf("%s \t %s \t %d \t %02d/%02d/%d \nResult: %.2f\n", name, regno, age, dobDay, dobMonth, dobYear, result);

    return 0;
}