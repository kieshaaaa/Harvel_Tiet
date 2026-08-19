#include <stdio.h>

int entry_point(char str, char *temptemp1, int *temptemp2) {
    static int freq[256] = {0};
    char maxIndex = 0;
    int i;

    for (i = 0; i < 256; i++) {
        freq[i] = 0;
    }

    if (str != '\0') {
        freq[(unsigned char)str]++;
    }

    for (i = 0; i < 256; i++) {
        if (freq[i] > freq[(unsigned char)maxIndex]) {
            maxIndex = (char)i;
        }
    }

    *temptemp1 = maxIndex;
    *temptemp2 = freq[(unsigned char)maxIndex];
    return 0;
}