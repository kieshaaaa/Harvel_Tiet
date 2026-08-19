// // C program to check whether two given numbers are co-prime numbers or not

// // Co Prime Numbers are a pair of numbers with just one factor in common, which is 1

// // Header Files
#include <stdio.h>
#include <math.h>

// // Main Function Start
int main()
{
    int a, b;
    printf("\nEnter Two Numbers to Find LCM => ");
    scanf("%d%d", &a, &b);

    a = fabs(a);
    b = fabs(b);
    int max_val = a > b ? a : b;
    int min_val = a < b ? a : b;

    int lcm, hcf;
    int i = max_val;
    while (i <= a * b) {
        if (i % min_val == 0) {
            lcm = i;
            break;
        }
        i += max_val;
    }
    hcf = a * b / lcm;
    if (hcf == 1)
        printf("\n%d and %d Are Co-Prime", max_val, min_val);
    else
        printf("\n%d and %d Are Not Co-Prime", max_val, min_val);

    return 0;
}
// // Main Function End