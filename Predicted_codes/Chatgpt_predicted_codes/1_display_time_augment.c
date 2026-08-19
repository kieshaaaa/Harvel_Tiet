#include <stdint.h>

void entry_point(uint32_t totalSeconds, uint32_t *temptemp1, uint32_t *temptemp2, uint32_t *temptemp3,
                 uint32_t *temptemp4, uint32_t *temptemp5, uint32_t *temptemp6, uint32_t *temptemp7) {
    int32_t hours = totalSeconds / 3600;
    int32_t minutes = (totalSeconds % 3600) / 60;
    int32_t seconds = totalSeconds % 60;

    *temptemp1 = totalSeconds;
    *temptemp2 = hours;
    *temptemp3 = minutes;
    *temptemp4 = seconds;
    *temptemp5 = hours;
    *temptemp6 = minutes;
    *temptemp7 = seconds;
}