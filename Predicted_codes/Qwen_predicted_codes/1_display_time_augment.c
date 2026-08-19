#include <stdio.h>

int entry_point(int totalSeconds, int *temptemp1, int *temptemp2, int *temptemp3, int *temptemp4, int *temptemp5, int *temptemp6, int *temptemp7) {
    int hours = totalSeconds / 3600;
    int minutes = (totalSeconds % 3600) / 60;
    int seconds = totalSeconds % 60;
    *temptemp1 = totalSeconds;
    *temptemp2 = hours;
    *temptemp3 = minutes;
    *temptemp4 = seconds;
    *temptemp5 = hours;
    *temptemp6 = minutes;
    *temptemp7 = seconds;
    return 0;
}