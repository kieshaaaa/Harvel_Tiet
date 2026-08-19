#include <stdio.h>

int entry_point(int n, int data, int *temptemp1, int *temptemp2, int *temptemp3) {
    int occurrences[100];
    int i;
    int counter = 0;
    int phi_ln21 = 1;
    int phi_ln24 = 255;

    for (i = 0; i < n; i++) {
        occurrences[i] = 0;
    }

    for (i = 0; i < n; i++) {
        occurrences[i % 100] = occurrences[i % 100] + 1;
        counter++;
        phi_ln21++;
        phi_ln24--;
    }

    *temptemp1 = counter;
    *temptemp2 = data + phi_ln21;
    *temptemp3 = data + phi_ln24;

    return 0;
}