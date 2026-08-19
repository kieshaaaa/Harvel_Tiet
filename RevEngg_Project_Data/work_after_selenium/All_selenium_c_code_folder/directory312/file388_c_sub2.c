#include<stdio.h>

int main() {
    int a, b, c, big, small;

    printf("ENTER FIRST NUMBER A :: ");
    scanf("%d", &a);
    printf("\nENTER SECOND NUMBER B :: ");
    scanf("%d", &b);
    printf("\nENTER THIRD NUMBER C :: ");
    scanf("%d", &c);

    big = a;
    if (b > big) big = b;
    if (c > big) big = c;

    small = a;
    if (b < small) small = b;
    if (c < small) small = c;

    printf("\nTHE BIGGEST NUMBER IS :: %d", big);
    printf("\n\nTHE SMALLEST NUMBER IS :: %d", small);

    return 0;
}