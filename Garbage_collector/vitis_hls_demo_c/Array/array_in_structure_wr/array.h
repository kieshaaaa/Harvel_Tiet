#ifndef ARRAY_H
#define ARRAY_H

typedef struct {
    unsigned int data : 32;
} ArrayElement;

int myFunction(ArrayElement arr[32]);

#endif

