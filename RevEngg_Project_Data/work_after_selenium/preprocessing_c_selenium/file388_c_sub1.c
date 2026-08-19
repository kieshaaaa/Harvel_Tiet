#include<stdio.h>

int entry_point(int (*n1), int (*n2), int (*n3), int (*temptemp1), int (*temptemp2)) {
int smallest;
int largest;
;
;
;
 if ((*n1) >= (*n2)) {
 if ((*n1) >= (*n3)) {
 largest = (*n1);
 } else {
 largest = (*n3);
 }
 } else {
 if ((*n2) >= (*n3)) {
 largest = (*n2);
 } else {
 largest = (*n3);
 }
 }
 if ((*n1) <= (*n2)) {
 if ((*n1) <= (*n3)) {
 smallest = (*n1);
 } else {
 smallest = (*n3);
 }
 } else {
 if ((*n2) <= (*n3)) {
 smallest = (*n2);
 } else {
 smallest = (*n3);
 }
 }
{
(*temptemp1) = largest ;
;
}
{
(*temptemp2) = smallest ;
;
}
 return 0;
}
