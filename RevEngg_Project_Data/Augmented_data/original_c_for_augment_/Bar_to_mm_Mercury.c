#include <stdio.h>

int main() {
    float bar, mmHg;
    printf("Enter pressure in Bar: ");
    scanf("%f", &bar);
    mmHg = bar * 750.062;
    printf("bar is %f mmHg.\n", mmHg);
    return 0;
}
