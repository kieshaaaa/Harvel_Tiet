#include<stdio.h>
#include<stdlib.h>

int main() {

        int score;
        int sum = 0;
        int grade = 0;
        int gradeNum = 0; 
        float avg = 0;
        int pass = 0;
        int totalGrades = 0;
       
        scanf("%d", &grade);
        while (grade != -1)
        {

                if (grade <= 100 && grade >= 70) {
                        pass = pass + 1;
                        printf("Pass: %d ", pass);
                }
                if (grade >= 0 && grade <= 100) {
                        totalGrades = totalGrades + 1;
                }
                printf("Enter a test score(-1 to quit):");
                scanf("%d", &grade);
        }
        avg = 100 * pass / totalGrades;
        printf("\nThe avg of the scores is : %f\n", avg);

}
