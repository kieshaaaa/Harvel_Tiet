#include<stdio.h>

int main() {
    char regno[15];
    char name[20];
    int age;
    float dob;
    float result;

    printf("Enter your Register number:\n");
    scanf("%14s", regno);

    printf("Enter your Name:\n");
    scanf("%19s", name);

    printf("Enter your age:\n");
    scanf("%d", &age);

    printf("Enter your DOB (YYYY.MM):\n");
    scanf("%f", &dob);

    result = age + dob; 
    printf("Name: \t Reg No: \t Age: \t DOB: \n");
    printf("%s \t %s \t %d \t %.2f \nResult: %.2f\n", name, regno, age, dob, result);

    return 0;
}