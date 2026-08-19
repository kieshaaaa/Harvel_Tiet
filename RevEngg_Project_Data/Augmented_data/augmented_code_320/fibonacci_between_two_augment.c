#include <stdio.h>

int main() {
    int lb, ub;
    int a = 0;
    int b = 1;
    int c = 0;

    printf("Enter the lower bound: ");
    scanf("%d", &lb);
    printf("Enter the upper bound: ");
    scanf("%d", &ub);

    // Handle special case where the lower bound is 0 or 1
    if (lb == 0) {
        printf("%d\n", a);
        if (ub == 0) return 0;  // If the upper limit is also 0, just print 0 and exit
        printf("%d\n", b);
    } else if (lb == 1) {
        printf("%d\n", b);
    }

    c = a + b;
    for (; c <= ub;) {
        if (c >= lb) {
            printf("%d\n", c);
        }
        a = b;
        b = c;
        c = a + b;
    }

    return 0;
}