#include <stdio.h>

int entry_point(char str, char *temptemp1, int *temptemp2) {
    static int freq[256] = {0};
    char minIndex = 0;
    int i;

    for (i = 0; i < 256; i++) {
        freq[i] = 0;
    }

    if (str != '\0') {
        freq[(unsigned char)str]++;
    }

    for (i = 0; i < 256; i++) {
        if (freq[i] != 0 && (freq[(unsigned char)minIndex] == 0 || freq[i] < freq[(unsigned char)minIndex])) {
            minIndex = (char)i;
        }
    }

    *temptemp1 = minIndex;
    *temptemp2 = freq[(unsigned char)minIndex];
    return 0;
}