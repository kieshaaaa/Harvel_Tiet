#include <stdio.h>

int main() {
    float lengthPair1, lengthPair2, sumOfPairs, kitePerimeter;

    printf("Input the length of the first pair of equal sides: ");
    scanf("%f", &lengthPair1);
    printf("Input the length of the second pair of equal sides: ");
    scanf("%f", &lengthPair2);

    sumOfPairs = lengthPair1 + lengthPair2;
    kitePerimeter = 2 * sumOfPairs;

    printf("Perimeter of the kite: ");
    printf("%.2f\n", kitePerimeter);

    return 0;
}