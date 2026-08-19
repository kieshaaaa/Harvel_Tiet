#include <stdio.h>

int entry_point(int (*decimal)) {
;
int highestBit = 31;
 while (highestBit >= 0 && !((*decimal) & (1 << highestBit))) {
 highestBit--;
 }
;
 if (highestBit == -1) {
;
 } else {
int i = highestBit;
 if ((*decimal) & (1 << i)) {
;
 } else {
;
 }
 }
 }
;
 return 0;
}
