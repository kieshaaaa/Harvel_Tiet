#include<stdio.h>
#include<stdlib.h>

int entry_point(float (*temptemp1), float (*temptemp2)) {
double totalGrades = 0;
double pass = 0;
double avg = 0;
double gradeNum = 0;
double grade = 0;
double sum = 0;
double score;
 while (grade != -1) {
;
 if (grade <= 100 && grade >= 70) {
 pass++;
{
(*temptemp1) = pass ;
;
}
 }
 if (grade >= 100) {
;
 }
 if (grade >= 0 && grade <= 100) {
 totalGrades++;
 }
 }
 avg = (pass / totalGrades)*100;
{
(*temptemp2) = avg ;
;
}
 return 0;
}
