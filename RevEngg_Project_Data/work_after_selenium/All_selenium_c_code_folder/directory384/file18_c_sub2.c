#include <stdio.h>

int main() {
    int x, y, z, largest;

    printf("Enter three numbers (separated by space): ");
    scanf("%d %d %d", &x, &y, &z);

    if(x > y) {
        if(x > z) 
            largest = x;
        else 
            largest = z;
    } else {
        if(y > z) 
            largest = y;
        else 
            largest = z;
    }

    printf("Largest number is = %d\n", largest);

    return 0;
}