#include <stdio.h>

void outputInfo(int rollno, char *name, float marks) {
    printf("\nName is : %s", name);
    printf("\nRoll No. is : %d", rollno);
    printMarks(marks);
}

void printMarks(float marks) {
    printf("\nMarks are : %f", marks);
    printf(" OR Marks are : %.2f", marks);
}

int main() {
    outputInfo(103, "Raj Malhotra", 68.5);
    return 0;
}