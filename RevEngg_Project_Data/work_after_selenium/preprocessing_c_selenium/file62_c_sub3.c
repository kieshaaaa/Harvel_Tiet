#include<stdio.h>

void printPattern1(int n) {
 for (int row = 1; row <= n; row++) {
 for (int space = n - row; space > 0; space--) {
;
 }
 for (int num = 1; num <= row; num++) {
;
 }
;
 }
}
void printPattern2(int n) {
 for (int row = 1; row <= n; row++) {
 for (int num = 1; num <= n - row + 1; num++) {
;
 }
;
 }
}
void printPattern3(int n) {
 for (int row = 1; row <= n; row++) {
 for (int space = 1; space < row; space++) {
;
 }
 for (int num = row; num >= 1; num--) {
;
 }
;
 }
}
int entry_point(int (*n)) {
;
;
 printPattern1((*n));
;
 printPattern2((*n));
;
 printPattern3((*n));
 return 0;
}
