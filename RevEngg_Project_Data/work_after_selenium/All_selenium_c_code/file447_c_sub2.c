#include<stdio.h>

int main() {
    int a[3] = { 11, 22, 33 };
    unsigned int address0 = (unsigned int)&a[0];
    unsigned int address1 = (unsigned int)&a[1];
    unsigned int address2 = (unsigned int)&a[2];
    
    printf("\n a[0] ,value=%d : address=%u", a[0], address0);
    printf("\n a[1] ,value=%d : address=%u", a[1], address1);
    printf("\n a[2] ,value=%d : address=%u", a[2], address2);

    return 0;
}