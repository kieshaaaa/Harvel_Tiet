#include <stdio.h>

int main() {
    float base, height, area;
    int check = 0;

    while(check != 2) {
        check = 0; // Reset check counter
        printf("Enter base of parallelogram: ");
        check += scanf("%f", &base) == 1; // Increment check if input is successful

        printf("Enter height of parallelogram: ");
        check += scanf("%f", &height) == 1; // Increment check if input is successful

        if(check != 2) {
            printf("Invalid input. Please enter numeric values.\n");
            while(getchar() != '\n'); // Clear input buffer
        }
    }

    area = base * height;
    printf("Parallelogram area: %.2f\n", area);

    return 0;
}