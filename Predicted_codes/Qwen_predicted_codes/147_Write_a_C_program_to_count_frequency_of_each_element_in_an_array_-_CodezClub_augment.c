#include <stdio.h>

int entry_point(int n, int data, int *temptemp1, int *temptemp2, int *temptemp3) {
    static int occurrences[100] = {0};
    int i, j;

    *temptemp1 = n;

    if (n <= 0) {
        *temptemp2 = data;
        *temptemp3 = 0;
        return 0;
    }

    for (i = 0; i < 100; i++) {
        occurrences[i] = -1;
    }

    for (i = 0; i < (n & 0x7F); i++) {
        occurrences[i] = 0;
    }

    for (i = 1; i <= (n & 0x7F); i++) {
        for (j = i; j < n; j++) {
            occurrences[i]++;
        }
    }

    for (i = 0; i < (n & 0x7F); i++) {
        if (occurrences[i] != 0) {
            *temptemp2 = data;
            *temptemp3 = occurrences[i];
            return 0;
        }
    }

    *temptemp2 = data;
    *temptemp3 = 0;
    return 0;
}