#include <stdio.h>

int main() {
    float pascals, mmHg;
    printf("Enter pressure in Pascals: ");
    scanf("%f", &pascals);
    mmHg = pascals * 0.007;
    printf(" Pa is %f mmHg.\n", mmHg);
    return 0;
}
