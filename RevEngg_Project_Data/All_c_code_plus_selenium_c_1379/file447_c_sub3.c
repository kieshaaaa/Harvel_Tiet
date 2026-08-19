#include<stdio.h>

int main() {
    int a[3] = { 11, 22, 33 };
    int i = 0;

    while(i < 3) {
        int value = a[i];
        unsigned int address = (unsigned int)&a[i];
        printf("\n a[%d] ,value=%d : address=%u", i, value, address);
        i++;
    }

    return 0;
}