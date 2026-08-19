#include <stdio.h>

int entry_point(int velocity, int duration, int *temptemp1) {
    *temptemp1 = velocity * duration;
    return 0;
}