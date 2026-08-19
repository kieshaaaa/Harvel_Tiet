#include <stdio.h>

int main() {
    float diagonal1, diagonal2, kiteArea;

    printf("Input the lengths of two diagonals.\n");
    scanf("%f%f", &diagonal1, &diagonal2);

    kiteArea = diagonal1 * diagonal2 * 0.5;

    printf("The area of the kite is ");
    printf("%.2f\n", kiteArea);

    return 0;
}