#include <stdio.h>

void displayStudentInfo(int rollno, char *name, float marks) {
    printf("\nName is : %s", name);
    printf("\nRoll No. is : %d", rollno);
    float roundedMarks = (int)(marks * 100 + 0.5) / 100.0; // Manual rounding to 2 decimal places
    printf("\nMarks are : %f OR Marks are : %.02f", marks, roundedMarks);
}

int main() {
    displayStudentInfo(101, "Shyam Verma", 75.25);
    return 0;
}