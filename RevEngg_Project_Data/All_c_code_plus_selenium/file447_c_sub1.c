#include<stdio.h>

int main() {
    int a[3] = { 11, 22, 33 };
    int i;

    for(i = 0; i < 3; i++) {
        int value = a[i];
        unsigned int address = (unsigned int)&a[i];
        printf("\n a[%d] ,value=%d : address=%u", i, value, address);
    }

    return 0;
}