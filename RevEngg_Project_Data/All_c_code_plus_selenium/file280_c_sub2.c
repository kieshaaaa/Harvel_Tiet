#include <stdio.h>

void printDetails(int rollno, char name[], float marks) {
    printf("\nName is : %s", name);
    printf("\nRoll No. is : %d", rollno);
    printf("\nMarks are : %f", marks);
    printf(" OR Marks are : %.2f", marks);
}

int main() {
    char studentName[] = "Geeta Kumari";
    printDetails(102, studentName, 82.75);
    return 0;
}