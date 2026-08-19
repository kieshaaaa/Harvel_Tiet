#include<stdio.h>

int main() {
    int n1, n2, n3, largest, smallest;

    printf("ENTER FIRST NUMBER A :: ");
    scanf("%d", &n1);
    printf("\nENTER SECOND NUMBER B :: ");
    scanf("%d", &n2);
    printf("\nENTER THIRD NUMBER C :: ");
    scanf("%d", &n3);

    if (n1 >= n2) {
        if (n1 >= n3) {
            largest = n1;
        } else {
            largest = n3;
        }
    } else {
        if (n2 >= n3) {
            largest = n2;
        } else {
            largest = n3;
        }
    }

    if (n1 <= n2) {
        if (n1 <= n3) {
            smallest = n1;
        } else {
            smallest = n3;
        }
    } else {
        if (n2 <= n3) {
            smallest = n2;
        } else {
            smallest = n3;
        }
    }

    printf("\nTHE BIGGEST NUMBER IS :: %d", largest);
    printf("\n\nTHE SMALLEST NUMBER IS :: %d", smallest);

    return 0;
}